Build the LabPal User Manual in LaTeX
=====================================

This repository contains a few scripts for generating a PDF version of the [LabPal User Manual](https://www.gitbook.com/book/liflab/labpal-user-manual) with LaTeX.

The nice thing is that the book is generated directly from the GitBook Markdown sources, without any modification. This produces a much nicer-looking PDF than what GitBook produces by itself (which looks like a bunch of web pages rendered by a browser and printed into a PDF). Among the nice things that a compilation through LaTeX brings:

- Larger choice of fonts
- Justification, hyphenation, kerning
- Produces a table of contents with actual page numbers (the GitBook PDF has weird section numbers in the TOC)
- Index terms at the end
- All the other goodies LaTeX takes care of (no section title alone at the bottom of a page, etc.)

Complete customization on the book's template can be done by fiddling with the LaTeX class, `lifmanual.cls`.

## Usage

1. Clone the repository from the user manual on GitBook in a local folder called `labpal-user-manual`.
2. Clone this repository beside, in a folder called `latex-labpal-user-manual`.
3. Run `update.sh` to sync the contents of `labpal-user-manual` with `latex-labpal-user-manual/Source/markdown`. **Don't** copy the folders manually, as you will also copy the hidden `.git` directory from the source into the target, and this will seriously mess things up.
4. Run `convert.sh` to generate the LaTeX sources into `latex-labpal-user-manual/Source/latex`.
5. Go to that folder and run `make` (or alternately, `pdflatex book`; but don't forget to also run `makeidx book` and compile multiple times, etc.).
6. The resulting PDF is called `book.pdf`.

## Dependencies

- [Pandoc](http://pandoc.org/) must be installed and in the system's path (i.e. you should be able to call it from the command line by simply writing `pandoc`)
- Java 1.8 (to run `gitbook-pandoc.jar`)
- The `rsync` command (comes by default in Linux systems; don't know in others)
- A LaTeX distribution; the book template imports a bunch of packages that you may need to install on the first run.


<!-- :wrap=soft:mode=markdown:maxLineLen=76: -->

