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
