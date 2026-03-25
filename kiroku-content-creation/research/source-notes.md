# Source Notes

Research references for Kiroku content — primarily the archivist and handwriting AI blog post and related pieces.

These are working notes, not a formal bibliography. Add sources as you find them; flag anything that needs proper verification before use in published content.

---

## AI and handwriting recognition: general

**Handwriting recognition technology**
- Most current handwriting recognition tools are based on sequence-to-sequence neural networks (e.g., LSTM-based models, transformer variants)
- Recognition accuracy on clean, modern handwriting is generally high; accuracy degrades significantly on historical, variable, or damaged documents
- Common failure mode: high-confidence incorrect output — models don't reliably signal when they're uncertain
- Key relevant concept: "out-of-distribution" data — material that differs significantly from training data tends to produce unreliable results without obvious error signals

**Sources to locate:**
- `[TO CONFIRM: academic literature on HTR (Handwritten Text Recognition) accuracy in archival contexts — look for work from Transkribus, READ-COOP, or similar projects]`
- `[TO CONFIRM: any published evaluation studies comparing human and machine transcription in archival settings]`
- `[TO CONFIRM: National Archives or similar body guidance on AI tools in archives — check TNA website and blog]`

---

## AI in archives: practice and policy

**Relevant themes:**
- Automated transcription as a tool for increasing access to large unprocessed collections
- Risk of "automation bias" — tendency to trust automated outputs without adequate scrutiny
- The distinction between transcription (what does the text say?) and description/interpretation (what does the document mean, how is it related to others?)
- Archivist roles in a period of increasing automation: quality assurance, training data curation, ground truth generation, interpretive work

**Sources to locate:**
- `[TO CONFIRM: any published guidance from CILIP, ARA, or Society of American Archivists on AI tools]`
- `[TO CONFIRM: Transkribus documentation and published case studies — https://readcoop.eu/transkribus/]`
- `[TO CONFIRM: relevant posts from the National Archives' blog — check https://blog.nationalarchives.gov.uk/]`
- `[TO CONFIRM: any literature on automation bias in information work]`

---

## Tyne Built Ships project

- Historical ship-building records from the River Tyne
- Documents include ship plans, technical drawings with handwritten annotations, administrative records
- Material spans approximately `[TO CONFIRM: date range of collection]`
- Held by `[TO CONFIRM: which institution(s) hold the collection]`
- Funded by The National Archives `[TO CONFIRM: programme name, funding period, grant reference if public]`

**Notes:**
- Ship plans present specific challenges compared to text documents: structured layout with annotations, large physical format, subject-specific terminology, variation between draughtsmen and shipyards
- Ground truth for training required specialist expertise — general transcription volunteers would not have had the subject knowledge

---

## Discovery Museum event (2019)

- `[TO CONFIRM: official event name]`
- `[TO CONFIRM: date]`
- `[TO CONFIRM: organisers — was this a TWAM event, a Tyne & Wear Archives event, a third-party event hosted at the museum?]`
- `[TO CONFIRM: our role — were we presenting, participating, or attending?]`

---

## Maritime conference

- `[TO CONFIRM: conference name]`
- `[TO CONFIRM: date and location]`
- `[TO CONFIRM: nature of our contribution — paper, presentation, panel?]`
- `[TO CONFIRM: any published proceedings or abstract]`

---

## General background reading (to explore)

- Work by Melissa Terras on digitisation and cultural heritage AI
- Projects using Transkribus for historical document transcription
- Literature on citizen science transcription projects (e.g., Zooniverse) and what they've found about error rates and human verification
- Any comparative studies of AI vs. human transcription accuracy on archival material
