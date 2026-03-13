# Lightweight LaTeX-Themen

[English](README.md) | [简体中文](README.zh-CN.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Français](README.fr.md)

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](LICENSE)
[![Made with LaTeX](https://img.shields.io/badge/Made%20with-LaTeX-008080.svg)](https://www.latex-project.org/)

Eine moderne Sammlung leichtgewichtiger LaTeX-Themen fur Bucher, Poster, Folien und Abschlussarbeiten.

Dieses Repository ist auf den akademischen Alltag ausgerichtet: klare Typografie, einfache Anpassung und eine Projektstruktur, die langfristig wartbar bleibt.

## Inhaltsverzeichnis

- [Highlights](#highlights)
- [Vorlagen](#vorlagen)
- [Schnellstart](#schnellstart)
- [Build-Befehle](#build-befehle)
- [Projektstruktur](#projektstruktur)
- [Anpassungsleitfaden](#anpassungsleitfaden)
- [Fehlerbehebung](#fehlerbehebung)
- [FAQ](#faq)
- [Mitwirken](#mitwirken)
- [Zitieren](#zitieren)
- [Lizenz](#lizenz)

## Highlights

- Speziell fur typische akademische Anwendungsfalle entwickelt.
- Leichtgewichtige Klassen-Dateien mit klaren Anpassungspunkten.
- Literatur und Assets sind pro Vorlage sauber getrennt.
- XeLaTeX-first fur moderne Schriftunterstutzung.

## Vorlagen

| Vorlage | Geeignet fur | Einstiegsdatei | Klassen-Datei |
| --- | --- | --- | --- |
| Lightweight Book | Monografien, Skripte, lange Texte | `Lightweight Book/Book_EN.tex` | `Lightweight Book/lightweightbook.cls` |
| Lightweight Poster | Konferenz- und Forschungsposter | `Lightweight Poster/Poster_EN.tex` | `Lightweight Poster/lightweight-poster.cls` |
| Lightweight Slides | Vortrage, Verteidigungen, Lehrfolien | `Lightweight Slides/Slides_EN.tex` | `Lightweight Slides/lightweight-slides.cls` |
| Lightweight Thesis | Bachelor-/Master-/Dissertationsarbeiten | `Lightweight Thesis/Thesis_CN.tex` | `Lightweight Thesis/lightweight-thesis.cls` |

## Schnellstart

1. Repository klonen.

```bash
git clone https://github.com/ruiyangzhou01/Lightweight-LaTeX.git
cd Lightweight-LaTeX
```

2. Eine Vorlage auswahlen und die Einstiegs-`.tex`-Datei offnen.

3. Mit XeLaTeX kompilieren (empfohlen uber `latexmk`).

Beispiel:

```bash
cd "Lightweight Book"
latexmk -xelatex -interaction=nonstopmode -synctex=1 Book_EN.tex
```

## Build-Befehle

| Vorlage | Befehl |
| --- | --- |
| Book | `cd "Lightweight Book"; latexmk -xelatex Book_EN.tex` |
| Poster | `cd "Lightweight Poster"; latexmk -xelatex Poster_EN.tex` |
| Slides | `cd "Lightweight Slides"; latexmk -xelatex Slides_EN.tex` |
| Thesis | `cd "Lightweight Thesis"; latexmk -xelatex Thesis_CN.tex` |

Wenn `latexmk` nicht verfugbar ist, manuell kompilieren:

```bash
xelatex MAIN_FILE.tex
bibtex MAIN_FILE
xelatex MAIN_FILE.tex
xelatex MAIN_FILE.tex
```

## Projektstruktur

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

## Anpassungsleitfaden

1. Inhalt: Einstiegs-`.tex`-Datei bearbeiten.
2. Literatur: `refs.bib` im jeweiligen Ordner aktualisieren.
3. Abbildungen: Dateien in `figures/` ersetzen.
4. Layout und Typografie: Parameter in der passenden `.cls`-Datei anpassen.
5. Mehrsprachigkeit: naheliegende Vorlage kopieren und lokalisieren.

## Fehlerbehebung

- Fehlende Schriften: Schriften installieren oder in der Klassen-Datei auf Systemschriften umstellen.
- Literatur fehlt: komplette Reihenfolge ausfuhren (`xelatex -> bibtex -> xelatex -> xelatex`).
- Referenzen unresolved: nach Anderungen mindestens zweimal neu kompilieren.
- Engine-Probleme: bevorzugt XeLaTeX verwenden.

## FAQ

### Mit welcher Vorlage sollte ich beginnen?

Am besten mit der Vorlage, die deinem Ziel am nachsten kommt (Buch, Poster, Folien, Thesis).

### Kann ich LuaLaTeX oder pdfLaTeX verwenden?

Moglich, aber die Vorlagen sind primar fur XeLaTeX konzipiert und getestet.

### Lassen sich Module zwischen Vorlagen kombinieren?

Ja. Achte dabei auf konsistente Paketoptionen und Klassen-Definitionen.

## Mitwirken

Beitrage sind willkommen.

- Erstelle ein Issue fur Bugs, Feature-Wunsche oder Layout-Verbesserungen.
- Sende einen Pull Request mit klarer Beschreibung und nach Moglichkeit PDF-Vergleich.

Issues: <https://github.com/ruiyangzhou01/Lightweight-LaTeX/issues>

## Zitieren

Wenn dieses Repository fur Forschung oder Lehre hilfreich ist, kannst du es so zitieren:

```bibtex
@misc{zhou_lightweight_latex_themes,
	author = {Ruiyang Zhou},
	title = {Lightweight LaTeX Themes},
	year = {2026},
	howpublished = {\url{https://github.com/ruiyangzhou01/Lightweight-LaTeX}}
}
```

## Lizenz

Dieses Projekt steht unter der GNU General Public License v3.0 (GPL-3.0). Details in `LICENSE`.