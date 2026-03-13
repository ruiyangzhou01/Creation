# Lightweight LaTeX Themes

[English](README.md) | [简体中文](README.zh-CN.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Français](README.fr.md)

Minimal, elegant, and practical LaTeX templates for academic and technical writing.

This repository provides four lightweight themes you can use as a starting point for books, posters, slides, and theses.

## Themes Included

| Theme | Purpose | Main file |
| --- | --- | --- |
| Lightweight Book | Book-style documents and long-form writing | `Lightweight Book/Book_EN.tex` |
| Lightweight Poster | Conference and research posters | `Lightweight Poster/Poster_EN.tex` |
| Lightweight Slides | Presentation slides | `Lightweight Slides/Slides_EN.tex` |
| Lightweight Thesis | Thesis and dissertation writing | `Lightweight Thesis/Thesis_CN.tex` |

## Why This Collection

- Clean layouts focused on readability.
- Lightweight class files with straightforward customization.
- Organized structure for fonts, references, and figures.
- Practical defaults for academic workflows.

## Quick Start

1. Clone this repository:

```bash
git clone https://github.com/ruiyangzhou01/Lightweight-LaTeX.git
cd Lightweight-LaTeX
```

2. Open one of the theme folders and compile the main `.tex` file.

Recommended (if you use `latexmk`):

```bash
cd "Lightweight Book"
latexmk -xelatex -synctex=1 -interaction=nonstopmode Book_EN.tex
```

You can replace the folder and main file name for other themes:

- `Lightweight Poster/Poster_EN.tex`
- `Lightweight Slides/Slides_EN.tex`
- `Lightweight Thesis/Thesis_CN.tex`

3. If your editor does not use `latexmk`, compile with your preferred LaTeX toolchain (for example XeLaTeX + BibTeX/Biber as needed by the template).

## Project Structure

```text
Lightweight-LaTeX/
|- Lightweight Book/
|- Lightweight Poster/
|- Lightweight Slides/
|- Lightweight Thesis/
|- LICENSE
`- README.md
```

Each theme directory contains its own class file, bibliography file, and assets.

## Customization Tips

- Update text content in the main `.tex` file for each theme.
- Replace images in each `figures/` directory.
- Edit bibliography entries in `refs.bib`.
- Adjust typography and layout in the corresponding `.cls` file.

## Requirements

- A modern TeX distribution: TeX Live, MiKTeX, or MacTeX.
- XeLaTeX is recommended for better font compatibility.
- Optional: `latexmk` for easier build automation.

## Language Versions

- English: `README.md`
- Chinese (Simplified): `README.zh-CN.md`
- German: `README.de.md`
- Spanish: `README.es.md`
- French: `README.fr.md`

## License

This project is licensed under the MIT License. See `LICENSE` for details.
