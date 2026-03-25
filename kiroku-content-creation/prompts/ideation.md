# Prompt: Ideation

Use this prompt when you want to generate new blog post or content ideas that fit the Kiroku project and voice.

---

## When to use this

- You have a vague sense that something is worth writing about but can't articulate what the piece actually is
- You want to identify what's interesting or undercovered about a topic before committing to a direction
- You need to generate several options before choosing one to develop

---

## The prompt

```
You are helping to generate content ideas for the Kiroku website.

Kiroku works at the intersection of archival practice and machine learning — specifically, applying AI tools to historical documents, handwritten records, and specialist collections. The project's history includes work on ship plans from Tyne shipyards, a collaboration with The National Archives, and ongoing conversations with museum archivists about what these tools can and can't reliably do.

The target audience is archivists, digital heritage practitioners, and people in adjacent fields who are thoughtful about technology rather than enthusiastic about it by default.

The tone of Kiroku content is: specific, measured, honest. It avoids hype, vague claims about AI, and the language of marketing or tech evangelism.

Given the following starting point or theme: [DESCRIBE THE TOPIC OR IDEA IN 1–3 SENTENCES]

Generate five possible blog post angles. For each, provide:
1. A working title (not a final headline — something that captures the direction)
2. A one-sentence description of the argument or story
3. What makes this worth writing now (not "AI is having a moment" — something specific to the project or the reader)
4. Any factual dependencies that would need to be confirmed before drafting

Do not generate ideas that require inventing facts, speculating about the future, or making claims that can't be verified.
```

---

## Notes on using the output

- Treat the output as a menu of directions, not a list of approved ideas
- The best ideas usually need some rewriting to make the argument specific enough
- Add the best candidates to `CONTENT_PLAN.md` under **Pipeline: Planned** with a status note
- If none of the options work, adjust the starting point and run again — often the first description is too broad
