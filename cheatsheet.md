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

---

### V. Case Manipulation

These commands allow you to change the case of characters.

#### A. In Visual Mode (After Selecting Text)

1.  **Select text** using `v` (character-wise), `V` (linewise), or `Ctrl+V` (blockwise).
2.  Then apply one of the following:

| Command (in Visual Mode) | Description                                                              |
| :----------------------- | :----------------------------------------------------------------------- |
| `U`                      | Change selected text to **UPPERCASE**.                                   |
| `u`                      | Change selected text to **lowercase**.                                   |
| `~`                      | **Toggle case** of selected text (uppercase ↔ lowercase).                |
| `gU`                     | (Alternative to `U`) Change selected text to **UPPERCASE**.              |
| `gu`                     | (Alternative to `u`) Change selected text to **lowercase**.              |
| `g~`                     | (Alternative to `~`) **Toggle case** of selected text.                   |

#### B. In Normal Mode (Operator + Motion)

These commands combine a case-changing operator (`gU`, `gu`, `g~`) with a motion. The format is `operator{motion}`.

| Operator | Description                                                                                                | Example Motion | Command Example | Result                                                              |
| :------- | :--------------------------------------------------------------------------------------------------------- | :------------- | :-------------- | :------------------------------------------------------------------ |
| `gU`     | Change to **UPPERCASE**.                                                                                   | `w` (word)     | `gUw`           | Change the current word to uppercase.                               |
|          |                                                                                                            | `$` (to EOL)   | `gU$`           | Change to uppercase from cursor to end of line.                     |
|          |                                                                                                            | `ap` (a para)  | `gUap`          | Change the current paragraph to uppercase.                          |
| `gu`     | Change to **lowercase**.                                                                                   | `w` (word)     | `guw`           | Change the current word to lowercase.                               |
|          |                                                                                                            | `i{` (in `{}`) | `gui{`          | Change text inside the current `{...}` block to lowercase.          |
| `g~`     | **Toggle case**.                                                                                           | `w` (word)     | `g~w`           | Toggle the case of the current word.                                |
|          |                                                                                                            | `L` (to EOL)   | `g~L`           | Toggle case from cursor to end of line (L is like $ in some contexts). |
|          |                                                                                                            | `3j` (3 lines) | `g~3j`          | Toggle case for the current line and the next 3 lines.              |

**Common Motions to use with Case Operators:**

*   `w`: to the start of the next word
*   `e`: to the end of the current word
*   `b`: to the beginning of the previous word
*   `$`: to the end of the current line
*   `0`: to the beginning of the current line
*   `^`: to the first non-blank character of the line
*   `aw`: a word (includes trailing/leading whitespace depending on cursor position)
*   `iw`: inner word (excludes whitespace)
*   `ap`: a paragraph
*   `ip`: inner paragraph
*   `as`: a sentence
*   `is`: inner sentence
*   `a{`, `i{`: a `{}` block, inner `{}` block (similarly for `()`, `[]`, `<>`)
*   `t{char}`: till (before) `{char}`
*   `f{char}`: find `{char}` (and include it)

---

