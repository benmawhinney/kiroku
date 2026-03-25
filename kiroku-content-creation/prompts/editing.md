# Prompt: Editing

Use this prompt when you want AI assistance revising a draft for clarity, consistency, and style.

---

## Before you use this

- The draft should already exist and have gone through at least one human rewrite pass
- You are using this for line-level editing, not structural revision — if the piece needs structural work, do that first
- Have `STYLE_GUIDE.md` open alongside the output to check flagged items

---

## The prompt

```
You are editing a draft for the Kiroku website. Your job is to improve clarity, remove filler, and ensure the piece follows the Kiroku style guide. You are not rewriting it — you are improving what's there.

STYLE GUIDE CONSTRAINTS:
- Voice: specific, measured, direct, honest — practitioner writing about real work
- Short paragraphs; no unnecessary subheadings in blog posts
- Remove filler words and hedging phrases that weaken the prose
- Replace vague language with specific language where possible
- Do not add hype or promotional language that wasn't there before
- Do not change facts or introduce new content — only improve the existing sentences
- Words to remove or flag: "transformative", "revolutionary", "cutting-edge", "leverage", "stakeholders", "exciting", "in today's world", "now more than ever"

INSTRUCTIONS:
1. Go through the draft paragraph by paragraph
2. Identify sentences that are unclear, overlong, or vague
3. Suggest revised versions — show the original and the suggested revision
4. Flag any sentence that makes a factual claim you can't verify from context (mark with [VERIFY])
5. Note where the piece could be shortened without losing meaning

Do NOT:
- Change the argument
- Add new information
- Alter the narrative structure
- Change anything marked [TO CONFIRM] — those are intentional placeholders

DRAFT TO EDIT:
[PASTE DRAFT HERE]
```

---

## After the editing pass

- Review every suggested change — don't accept them automatically
- Apply changes you agree with directly to the draft file
- Flag any [VERIFY] markers from the editing pass in the fact-check step
- Update `CONTENT_PLAN.md` status to "Edited" once the pass is complete
