# Typesetter

A small docker container to typeset latex, org-mode and markdown documents.
Includes pandoc and emacs-nox.

**NOTE** Emacs will generate tex files for xelatex.

Usage:

```
docker run --rm $(pwd):/src:z adimit/typesetter emacs file.org --batch -f org-latex-export-to-latex --kill
docker run --rm $(pwd):/src:z adimit/typesetter latexmk -xelatex file.tex
```

The `-c` option to `latexmk` doesn't currently work (even though we're using the
newer latexmk version). See [this bug](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=880521).

Emacs doesn't run latex/bibtex/biber often enough, so we use latexmk instead. `pandoc` is also available.

*Make sure your `bib` files are accessible inside the container.*

## Latex Packages

Since the full tex installation is prohibitively large, you should put any and
all additional latex packages you need under `.texmf/tex/latex` (next to your tex file). This directory
will get tex-hashed by the container's entrypoint on startup.
