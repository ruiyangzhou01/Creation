# Lightweight LaTeX-Themen

[English](README.md) | [简体中文](README.zh-CN.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Français](README.fr.md)

Minimale, elegante und praktische LaTeX-Vorlagen fur wissenschaftliches und technisches Schreiben.

Dieses Repository stellt vier leichtgewichtige Themen bereit, die als Ausgangspunkt fur Bucher, Poster, Folien und Abschlussarbeiten dienen.

## Enthaltene Themen

| Thema | Zweck | Hauptdatei |
| --- | --- | --- |
| Lightweight Book | Buchartige Dokumente und lange Texte | `Lightweight Book/Book_EN.tex` |
| Lightweight Poster | Konferenz- und Forschungsposter | `Lightweight Poster/Poster_EN.tex` |
| Lightweight Slides | Präsentationsfolien | `Lightweight Slides/Slides_EN.tex` |
| Lightweight Thesis | Thesis- und Dissertationsschreiben | `Lightweight Thesis/Thesis_CN.tex` |

## Warum diese Sammlung

- Klare Layouts mit Fokus auf Lesbarkeit.
- Leichtgewichtige Klassen-Dateien mit einfacher Anpassung.
- Übersichtliche Struktur fur Schriften, Literatur und Abbildungen.
- Praktische Standardeinstellungen fur akademische Workflows.

## Schnellstart

1. Repository klonen:

```bash
git clone https://github.com/ruiyangzhou01/Lightweight-LaTeX.git
cd Lightweight-LaTeX
```

2. Einen Themenordner offnen und die jeweilige Haupt-`.tex`-Datei kompilieren.

Empfohlen (mit `latexmk`):

```bash
cd "Lightweight Book"
latexmk -xelatex -synctex=1 -interaction=nonstopmode Book_EN.tex
```

Fur die anderen Themen die Datei entsprechend ersetzen:

- `Lightweight Poster/Poster_EN.tex`
- `Lightweight Slides/Slides_EN.tex`
- `Lightweight Thesis/Thesis_CN.tex`

3. Wenn dein Editor `latexmk` nicht verwendet, nutze deine bevorzugte LaTeX-Toolchain (z. B. XeLaTeX + BibTeX/Biber je nach Vorlage).

## Projektstruktur

```text
Lightweight-LaTeX/
|- Lightweight Book/
|- Lightweight Poster/
|- Lightweight Slides/
|- Lightweight Thesis/
|- LICENSE
`- README.md
```

Jeder Themenordner enthält eigene Klassen-Dateien, Literaturdateien und Assets.

## Anpassungstipps

- Inhalte in der jeweiligen Haupt-`.tex`-Datei anpassen.
- Bilder in den `figures/`-Ordnern ersetzen.
- Literaturdaten in `refs.bib` pflegen.
- Typografie und Layout in den zugehörigen `.cls`-Dateien einstellen.

## Voraussetzungen

- Eine moderne TeX-Distribution: TeX Live, MiKTeX oder MacTeX.
- XeLaTeX wird fur bessere Schriftkompatibilität empfohlen.
- Optional: `latexmk` fur einfachere Build-Automatisierung.

## Sprachversionen

- English: `README.md`
- Chinese (Simplified): `README.zh-CN.md`
- Deutsch: `README.de.md`
- Español: `README.es.md`
- Français: `README.fr.md`

## Lizenz

Dieses Projekt ist unter der MIT-Lizenz veröffentlicht. Details in `LICENSE`.