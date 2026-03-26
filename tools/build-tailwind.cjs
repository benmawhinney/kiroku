const fs = require('fs');
const path = require('path');
const postcss = require('postcss');
const tailwindcss = require('@tailwindcss/postcss');
const autoprefixer = require('autoprefixer');

async function build() {
  const cwd = path.resolve(__dirname, '..');
  const inputPath = path.resolve(cwd, 'src', 'styles', 'tailwind-input.css');
  const outPath = path.resolve(cwd, 'styles.css');

  const css = fs.readFileSync(inputPath, 'utf8');

  const result = await postcss([
    tailwindcss({ base: cwd }),
    autoprefixer,
  ]).process(css, { from: inputPath });

  fs.writeFileSync(outPath, result.css, 'utf8');
  console.log('Wrote', outPath);
}

build().catch(err => {
  console.error(err);
  process.exit(1);
});
