# Prompt: Fact-Check

Use this prompt when you want AI assistance identifying factual claims in a draft that require verification before publication.

---

## Before you use this

- The draft should be at or near final — this is a pre-publication check, not an early-stage review
- You will still need to verify the identified claims yourself against primary sources
- The output of this prompt is a checklist for your own fact-checking work, not a verification in itself

**Important:** AI cannot verify facts. It can identify claims that need checking. Do not treat a clean output from this prompt as confirmation that the piece is accurate.

---

## The prompt

```
You are helping to fact-check a draft before publication on the Kiroku website.

Your job is to read the draft carefully and identify every specific factual claim that would need to be verified against a primary source before the piece is published.

For each claim, note:
1. The exact sentence or phrase containing the claim
2. What type of claim it is (name, date, statistic, quotation, description of an event, etc.)
3. What would constitute adequate verification (e.g., "confirm against TNA funding announcement", "confirm with named person", "check official conference programme")
4. Whether the claim is already marked [TO CONFIRM] in the draft

Be thorough. Include:
- Names of organisations, people, and projects
- Dates and years
- Descriptions of events (what happened, who was involved, what was said)
- Any statistics, measurements, or quantities
- Any paraphrased speech or attributed views
- Any claims about what a technology can or cannot do

Do NOT:
- Verify the claims yourself
- Suggest rewrites
- Comment on style or argument

OUTPUT FORMAT:
Produce a numbered list. For each item: claim | type | how to verify | already flagged? (yes/no)

DRAFT TO CHECK:
[PASTE DRAFT HERE]
```

---

## After the fact-check pass

- Go through each item in the list and verify against a primary source
- Record sources in `research/source-notes.md`
- Resolve all `[TO CONFIRM]` placeholders — replace with confirmed information or remove the claim
- Only publish once every item on the list is resolved
- Update `CONTENT_PLAN.md` to note fact-check complete with date
