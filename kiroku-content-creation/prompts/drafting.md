# Prompt: Drafting

Use this prompt when you want AI assistance writing a first draft of a blog post or case study.

---

## Before you use this

- You should have a clear one-sentence description of what the piece is about and who it's for
- You should have notes in `research/` covering the facts you know, with `[TO CONFIRM]` markers on anything unverified
- You should have read `AGENT_BRIEF.md` and `STYLE_GUIDE.md`

Do not use this prompt to draft something whose factual basis is unclear. A draft built on invented or unverified details will need to be thrown out.

---

## The prompt

```
You are helping to write a first draft for the Kiroku website.

Read the following context carefully before writing:

STYLE GUIDE SUMMARY:
- Voice: reflective practitioner — specific, measured, direct, honest
- Lead with a concrete moment or detail, not a statement of theme
- Short paragraphs (3–5 sentences)
- Avoid: hype language, corporate-speak, filler openings, vague AI claims
- Do not use: "transformative", "revolutionary", "cutting-edge", "leverage", "stakeholders", "exciting"
- Use [TO CONFIRM] for any detail you cannot verify from the information provided
- Do not invent facts, dates, names, or quotations

PIECE DESCRIPTION:
[DESCRIBE WHAT THE PIECE IS ABOUT IN 2–4 SENTENCES — include the argument, the narrative arc, and the intended reader]

KEY FACTS TO INCLUDE:
[LIST THE FACTS, DATES, ORGANISATIONS, AND EVENTS THAT SHOULD APPEAR IN THE DRAFT — note anything that is not yet confirmed]

TONE NOTE:
[ANY SPECIFIC GUIDANCE ON THE VOICE FOR THIS PIECE — e.g., "more technical", "less formal", "starts with a question"]

Write a first draft of approximately [WORD COUNT — typically 600–1,000 for a blog post]. 

At the end of the draft, add a section called "Claims to verify before publishing" listing every specific factual claim that requires confirmation.
```

---

## After the draft

- Read it straight through before editing a word
- Check whether the opening is really the opening — first drafts often bury the lead
- Add the draft to `drafts/` and mark it in `CONTENT_PLAN.md` with status "First draft"
- Do not share or publish without completing the full workflow in `BLOG_WORKFLOW.md`
