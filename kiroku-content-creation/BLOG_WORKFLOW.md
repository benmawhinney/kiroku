# Blog Workflow

A step-by-step process for taking a piece from initial idea to publication. This applies to blog posts, case studies, and most long-form content.

---

## Step 1: Idea

Write a single sentence describing what the post is about and why it's worth saying now. If you can't write that sentence, the idea isn't ready yet.

Then write one more sentence: who is this for, and what should they think or do differently after reading it?

File these in `CONTENT_PLAN.md` under **Pipeline: Planned** with a status note.

---

## Step 2: Research

Before drafting, gather what you actually know.

- Open the relevant file in `research/` (or create one)
- Note the facts you're certain of and the facts you need to confirm
- Mark everything unverified with `[TO CONFIRM]`
- Record sources — links, document names, people to ask — in `research/source-notes.md`

Don't skip this step to get to writing faster. A draft built on uncertain facts will need a complete rewrite.

---

## Step 3: Draft

Write a rough first version. The goal here is to get the story out of your head, not to produce something publishable.

- Start with the most concrete thing you know — a moment, an object, a question
- Don't edit as you go
- Don't worry about length
- Use `[TO CONFIRM]` for anything you can't verify in the moment
- Don't add subheadings unless they're structurally essential

Save the draft in `drafts/` with a descriptive filename (kebab-case, no dates in the filename).

If you're using AI assistance for this step, use the prompt in `prompts/drafting.md`.

---

## Step 4: Rewrite

Read the draft from start to finish. Then:

- Identify the real opening — it's usually not the first paragraph
- Cut anything that doesn't earn its place
- Check whether the argument is clear without having to be stated
- Read aloud to find sentences that don't work

This is not line editing. It's structural. Move things, cut things, reorder things.

---

## Step 5: Edit

A line-level pass for clarity, consistency, and style.

- Check every sentence against the style guide
- Replace vague words with specific ones
- Cut adverbs and hedging phrases that weaken the prose
- Check capitalisation, numbers, and dates against the style guide

If you're using AI assistance for this step, use the prompt in `prompts/editing.md`.

---

## Step 6: Fact-check

Before any piece is published, every specific claim must be verified.

Go through the piece and list:
- Every named organisation, project, and event
- Every date and year
- Every statistic or measurement
- Any paraphrased or direct quotation

Check each item against a primary source. Update `research/source-notes.md` with the sources used.

If something cannot be confirmed, either remove it or replace it with a clearly qualified statement ("as of [date], this had not been publicly announced").

Resolve all `[TO CONFIRM]` placeholders before the piece moves forward.

If you're using AI assistance to identify claims, use the prompt in `prompts/factcheck.md`.

---

## Step 7: Publish

Only publish once:

- [ ] All `[TO CONFIRM]` placeholders have been resolved
- [ ] Sources are recorded in `research/source-notes.md`
- [ ] Any named individuals have been consulted about their inclusion (if relevant)
- [ ] Partner names are used correctly and with appropriate attribution
- [ ] The piece has been read aloud at least once since the final edit

Update `CONTENT_PLAN.md` to mark the piece as published, with the publish date and URL.

---

## A note on AI-assisted writing

Using AI to draft or edit content in this workflow is fine — with conditions. Read `AGENT_BRIEF.md` before starting. The main conditions are: don't let AI invent facts, don't publish without a human fact-check, and don't mistake a fluent draft for a good one.
