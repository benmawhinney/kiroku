#!/usr/bin/env bash
# tools/generate_subset_fonts.sh
# Downloads Inter font files from Google Fonts CSS and generates subsetted woff2 files
# Requires: curl, python3, pip, fonttools (installed into user site)

set -euo pipefail
OUT_DIR="$(pwd)/assets/fonts"
mkdir -p "$OUT_DIR"

echo "Installing fonttools (user install)..."
# install fonttools and brotli; proceed even if install warns
python3 -m pip install --user fonttools brotli || true

CSS_URL="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap"
CSS_FILE="$OUT_DIR/remote-inter.css"


echo "Downloading Google Fonts CSS (using browser UA to request woff2)..."
curl -sSf -L -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36" -H "Accept: text/css" -o "$CSS_FILE" "$CSS_URL"

echo "Extracting font URLs (woff2/ttf/otf)..."
grep -oE "https:[^)]+\\.(woff2|ttf|otf)" "$CSS_FILE" | sort -u > "$OUT_DIR/woff2_urls.txt"

if [ ! -s "$OUT_DIR/woff2_urls.txt" ]; then
  echo "No woff2 URLs found in $CSS_FILE" >&2
  exit 1
fi

echo "Found woff2 URLs. Downloading files..."
while IFS= read -r url; do
  fname=$(basename "$url")
  out="$OUT_DIR/$fname"
  if [ ! -f "$out" ]; then
    echo "Downloading $url -> $out"
    curl -sSf -L -o "$out" "$url"
  else
    echo "Already have $out"
  fi
done < "$OUT_DIR/woff2_urls.txt"

# Choose a source file for subsetting (use the first downloaded woff2)
src=$(ls "$OUT_DIR"/*.woff2 | head -n1)
if [ -z "$src" ]; then
  echo "No woff2 source file available." >&2
  exit 1
fi

echo "Subsetting fonts to weights 400/600/700 using fontTools.subset"
for weight in 400 600 700; do
  dst="$OUT_DIR/inter-${weight}.woff2"
  if [ -f "$dst" ]; then
    echo "$dst already exists"
    continue
  fi
  echo "Creating $dst (weight $weight)"
  python3 -m fontTools.subset "$src" \
    --output-file="$dst" \
    --flavor=woff2 \
    --text="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,:;!?()[]{}@#%&*-+/='\"" \
    --layout-features='*' \
    --name-IDs='*' || {
      echo "fontTools.subset failed for $dst" >&2
      exit 1
    }
done

echo "Done. Subset fonts are in $OUT_DIR (inter-400.woff2, inter-600.woff2, inter-700.woff2)."
echo "If you see errors about woff2 support, ensure your Python environment has fonttools built with woff2 support or install system woff2 tools."
