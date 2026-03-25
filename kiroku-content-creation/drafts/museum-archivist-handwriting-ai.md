# When an archivist asks about handwriting AI

*Draft — not for publication. See "Claims to verify before publishing" at the end of this file.*

---

It started with ship plans.

In 2019, we were invited to an event at the Discovery Museum in Newcastle — a workshop [TO CONFIRM: event name and format] bringing together people working at the intersection of technology and cultural heritage. It was the kind of afternoon where you end up in a conversation you hadn't expected to have, with someone whose work turns out to be adjacent to yours in ways neither of you had noticed before.

Someone there was dealing with a collection of ship plans. Not digitised text, not typed ledgers — hand-drawn technical drawings with handwritten annotations, produced in shipyards along the Tyne over the better part of a century. The kind of material that has never been fully catalogued, not because people haven't tried, but because the volume is enormous and the expertise required to interpret the drawings is genuinely specialist.

We talked about what machine learning might be able to do with that kind of material. Not in a speculative way — in a practical one. What was actually possible now, not in five years. What would require human input no matter how good the tooling got. Where the useful work was.

That conversation was the beginning of what became the Tyne Built Ships project.

---

The project took time to come together properly. Working with ship plans turned out to be different from working with handwritten text in ways we hadn't fully anticipated. The layout was structured — title blocks, revision histories, parts lists — but the handwriting in those blocks varied enormously between draughtsmen, between yards, between decades. The documents were physically large, often damaged, sometimes partially legible. And the terminology was specific: the vocabulary of a particular trade, in a particular region, over a particular period.

The National Archives [TO CONFIRM: exact funding mechanism and announcement] eventually funded the work. That brought with it both resources and accountability — the work had to be documented carefully, the methodology had to hold up to scrutiny, and the outcomes had to be honest about what the technology could and couldn't do.

What it could do: reliably identify and extract text from certain types of structured fields, given enough training data and enough human-generated ground truth to learn from.

What it couldn't do: interpret ambiguous handwriting without error, handle material significantly outside its training distribution, or make judgements about what a transcription meant in context. That last part — the interpretive layer — stayed with the archivists throughout.

We presented the project at a maritime heritage conference [TO CONFIRM: conference name, location, and date]. The audience was mostly practitioners rather than technologists, and the questions they asked were sharper for it. The one that stayed with me was simple: "How do you know when to trust it?" The answer — that you don't, exactly, that you build a verification workflow that assumes some outputs will be wrong — was not entirely satisfying, but it was honest.

---

A few months ago, a museum archivist got in touch. They'd been following the Tyne Built Ships work and had a specific question: they were considering using a handwriting recognition tool for a collection they were processing, and they wanted to know what we thought.

The question had a slightly different shape than I'd expected. They weren't asking "does it work?" They'd already accepted that it worked, in some sense. What they were asking was: "How do I explain to my institution what the tool is actually doing, and where the human judgement still lives?"

That's a more interesting question.

We spent some time with the tool they were considering. It performed reasonably well on clean, regular hands — the sort of material where any reasonably attentive transcriber would also find the work fairly straightforward. It struggled where the writing was compressed, where abbreviations were used inconsistently, where ink had faded unevenly. In those cases, it didn't fail gracefully: it produced confident-looking output that was simply wrong in ways that weren't always obvious.

This is, in our experience, the consistent failure mode of handwriting AI — not that it can't read, but that it doesn't know when it can't read. A human transcriber working through difficult material will slow down, flag uncertainty, add a note. The model keeps going.

---

The archivist's question led us to run a small experiment [TO CONFIRM: details of experiment, outputs, and whether this is appropriate to describe publicly]. We took a sample of the ship plan annotations — material the model hadn't been trained on, from a later period than most of the training data — and ran it through the tool. Then we had an archivist with relevant expertise work through the same material.

The model was faster. On clean material, it was accurate. On the difficult sections, it produced plausible-looking errors: words that might exist in context but were wrong, abbreviations expanded incorrectly, numbers misread in ways that wouldn't be caught without reference to the original drawing.

The archivist caught most of these. Not all — there were a few cases where the model's confident output was accepted without the check it deserved. Which is worth noting: the risk isn't only that the tool will be wrong. It's that a fluent, formatted output creates a false impression of reliability, and that impression is harder to resist than a blank space would be.

---

None of this is an argument against using handwriting AI in archives. It's an argument for being clear about what it is.

It's a tool that accelerates certain kinds of work and introduces certain kinds of risk. It extends what a small team can process in a given time. It doesn't replace the judgement required to know whether a transcription is correct, what a document means, or how it relates to others in the collection. That judgement belongs to the archivist — and arguably, in a world where automated transcription is becoming routine, the archivist's interpretive role becomes more visible and more significant, not less.

The question the archivist asked — how do I explain where the human judgement still lives? — is the right question to be asking. Not just for their institution, but for anyone deploying these tools.

Where it lives is where it always has: in the decision to check, in the knowledge of what to look for, and in the professional accountability for the record being correct.

---

*Published on the Kiroku website. [TO CONFIRM: publish date and URL]*

---

## Claims to verify before publishing

- **Discovery Museum event:** Confirm event name, date, and format. Confirm we were "invited" — who invited us, in what capacity.
- **Tyne Built Ships project:** Confirm correct project name and any co-owners or collaborators who should be credited.
- **The National Archives funding:** Confirm funding mechanism, exact programme name, and whether/how this should be attributed.
- **Maritime conference:** Confirm conference name, location, and date. Confirm we presented there and in what format (paper, talk, panel, etc.).
- **Archivist contact:** Confirm whether the archivist should be named, whether their institution should be named, and whether they've consented to be described in this piece.
- **Experiment details:** Confirm whether the experiment described is accurate, whether the results match what we found, and whether it's appropriate to describe publicly.
- **All quotations:** No direct quotations used in this draft — all speech is paraphrased. If any direct quotes are added, they must be confirmed with the speaker.
