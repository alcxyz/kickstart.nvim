# Vim Cheatsheet

## Navigation

Here are common ways to navigate in Vim, focusing on line movements, paragraphs, and code blocks.

---

### I. Line Navigation

| Command | Description                                                                 |
| :------ | :-------------------------------------------------------------------------- |
| `0`     | Go to the **absolute beginning** of the current line (column 0).            |
| `^`     | Go to the **first non-whitespace character** on the current line.           |
| `$`     | Go to the **end** of the current line.                                      |
| `g$`    | Go to the end of the current **display line** (useful if `set wrap` is on). |
| `I`     | **Insert** text at the first non-whitespace character (like `^` then `i`).  |
| `A`     | **Append** text at the end of the line (like `$` then `a`).                 |

---

### II. Paragraph Navigation (Primarily for Prose/Text)

Paragraphs are typically separated by one or more blank lines.

| Command | Description                                         |
| :------ | :-------------------------------------------------- |
| `{`     | Move to the beginning of the **previous paragraph**. |
| `}`     | Move to the beginning of the **next paragraph**.     |

---

### III. Code Block / Delimited Block Navigation

Useful for navigating within and between blocks of code or text enclosed in `()`, `[]`, or `{}`.

| Command | Description                                                                                                |
| :------ | :--------------------------------------------------------------------------------------------------------- |
| `%`     | Jump to the **matching item**: `()`, `[]`, `{}`. If on an opening item, jumps to closing, and vice-versa.    |
| `[[`    | Move to the **previous start** of a top-level block/function (often where `{` is in the first column).      |
| `]]`    | Move to the **next start** of a top-level block/function (often where `{` is in the first column).          |
| `[]`    | Move to the **previous end** of a top-level block/function (often where `}` is in the first column).        |
| `][`    | Move to the **next end** of a top-level block/function (often where `}` is in the first column).            |
| `[{`    | (More advanced) Move to the **previous unmatched** `{`. Useful for finding the start of an enclosing block. |
| `]}`    | (More advanced) Move to the **next unmatched** `}`. Useful for finding the end of an enclosing block.       |

---

### IV. Sentence Navigation (More Granular than Paragraphs)

Sentences are typically defined as ending with `.`, `!`, or `?` followed by a space or end-of-line.

| Command | Description                                  |
| :------ | :------------------------------------------- |
| `(`     | Move to the beginning of the **previous sentence**. |
| `)`     | Move to the beginning of the **next sentence**.   |

---

**Tip:** Many of these navigation commands can be prefixed with a count. For example, `3}` moves down three paragraphs. `2%` might be used in specific contexts with plugins that extend `%` functionality.

This cheatsheet should give you a good starting point for more efficient block-wise navigation in Vim!
