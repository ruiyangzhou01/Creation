# Lightweight LaTeX Themes

[English](README.md) | [简体中文](README.zh-CN.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Français](README.fr.md)

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](LICENSE)
[![Made with LaTeX](https://img.shields.io/badge/Made%20with-LaTeX-008080.svg)](https://www.latex-project.org/)

A modern collection of lightweight LaTeX themes for books, posters, slides, and theses.

This repository focuses on practical academic writing workflows: clean typography, easy customization, and project structures that are simple to maintain.

## Table of Contents

- [Highlights](#highlights)
- [Templates](#templates)
- [Quick Start](#quick-start)
- [Build Commands](#build-commands)
- [Project Structure](#project-structure)
- [Customization Guide](#customization-guide)
- [Troubleshooting](#troubleshooting)
- [FAQ](#faq)
- [Contributing](#contributing)
- [Citation](#citation)
- [License](#license)

## Highlights

- Purpose-built templates for common academic scenarios.
- Lightweight class files with clear entry points for customization.
- Separate assets and bibliography in each template folder.
- Ready for XeLaTeX-first workflows with modern font support.

## Templates

| Template | Best for | Entry file | Class file |
| --- | --- | --- | --- |
| Lightweight Book | Monographs, lecture notes, manuals | `Lightweight Book/Book_EN.tex` | `Lightweight Book/lightweightbook.cls` |
| Lightweight Poster | Conference and lab posters | `Lightweight Poster/Poster_EN.tex` | `Lightweight Poster/lightweight-poster.cls` |
| Lightweight Slides | Talks, thesis defense, course slides | `Lightweight Slides/Slides_EN.tex` | `Lightweight Slides/lightweight-slides.cls` |
| Lightweight Thesis | Bachelor/Master thesis writing | `Lightweight Thesis/Thesis_CN.tex` | `Lightweight Thesis/lightweight-thesis.cls` |

## Quick Start

1. Clone the repository.

```bash
git clone https://github.com/ruiyangzhou01/Lightweight-LaTeX.git
cd Lightweight-LaTeX
```

2. Pick one template folder and open its entry `.tex` file.

3. Compile with XeLaTeX (recommended), ideally through `latexmk`.

Example:

```bash
cd "Lightweight Book"
latexmk -xelatex -interaction=nonstopmode -synctex=1 Book_EN.tex
```

## Build Commands

| Template | Command |
| --- | --- |
| Book | `cd "Lightweight Book"; latexmk -xelatex Book_EN.tex` |
| Poster | `cd "Lightweight Poster"; latexmk -xelatex Poster_EN.tex` |
| Slides | `cd "Lightweight Slides"; latexmk -xelatex Slides_EN.tex` |
| Thesis | `cd "Lightweight Thesis"; latexmk -xelatex Thesis_CN.tex` |

If `latexmk` is not available, compile manually:

```bash
xelatex MAIN_FILE.tex
bibtex MAIN_FILE
xelatex MAIN_FILE.tex
xelatex MAIN_FILE.tex
```

## Project Structure

```text
Lightweight-LaTeX/
|- Lightweight Book/
|  |- Book_EN.tex
|  |- lightweightbook.cls
|  |- refs.bib
|  `- fonts/
|- Lightweight Poster/
|  |- Poster_EN.tex
|  |- lightweight-poster.cls
|  |- refs.bib
|  |- figures/
|  `- fonts/
|- Lightweight Slides/
|  |- Slides_EN.tex
|  |- lightweight-slides.cls
|  |- refs.bib
|  `- figures/
|- Lightweight Thesis/
|  |- Thesis_CN.tex
|  |- lightweight-thesis.cls
|  |- refs.bib
|  `- figures/
|- LICENSE
|- README.md
|- README.zh-CN.md
|- README.de.md
|- README.es.md
`- README.fr.md
```

## Customization Guide

1. Content: edit the template entry `.tex` file.
2. Bibliography: update `refs.bib` in the same folder.
3. Figures: replace files in `figures/`.
4. Fonts and style: adjust options in the corresponding `.cls` file.
5. Language/localization: duplicate and adapt the nearest template file.

## Troubleshooting

- Missing fonts: install required fonts or switch to available system fonts in the class file.
- Bibliography not showing: run the full build sequence (`xelatex -> bibtex -> xelatex -> xelatex`).
- Undefined references: compile twice after bibliography/index updates.
- TeX engine mismatch: use XeLaTeX for best compatibility.

## FAQ

### Which template should I start with?

Choose the closest use case first (book, poster, slides, thesis). It is usually faster than migrating later.

### Can I use LuaLaTeX or pdfLaTeX?

Possibly, but these themes are designed and tested primarily for XeLaTeX.

### Can I combine modules from different templates?

Yes. Copy the parts you need, then reconcile package options and class-level style definitions.

## Contributing

Contributions are welcome.

- Open an issue for bug reports, template requests, or layout improvements.
- Submit a pull request with a clear description and before/after PDF previews when possible.

Project issues: <https://github.com/ruiyangzhou01/Lightweight-LaTeX/issues>

## Citation

If this repository helps your research or teaching materials, please cite it:

```bibtex
@misc{zhou_lightweight_latex_themes,
	author = {Ruiyang Zhou},
	title = {Lightweight LaTeX Themes},
	year = {2026},
	howpublished = {\url{https://github.com/ruiyangzhou01/Lightweight-LaTeX}}
}
```

## License

This project is licensed under the GNU General Public License v3.0. See `LICENSE` for details.
