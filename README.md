# srts_to_pdfs
Merges multiple .srt transcript files into a single PDF.

# Requirements

```bash
gem install prawn
```

# Running

```bash
ruby merge_srt.rb [lists of paths]
```

# Assumptions

Each directory given contains related srt files, since each directory given generates 1 PDF.

# Other possible features to add.

I just wanted PDF transcripts so I didn't bother starting out by making this
feature rich.  Some possible ideas:

- Use a keyword file to bold keywords
- Making mathematical symbols stand out (e.g. use of X, Y, etc.)
- Improving the look & feel of the font.
