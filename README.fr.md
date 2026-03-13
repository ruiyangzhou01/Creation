# Themes Lightweight LaTeX

[English](README.md) | [简体中文](README.zh-CN.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Français](README.fr.md)

Des modeles LaTeX minimalistes, elegants et pratiques pour la redaction academique et technique.

Ce depot propose quatre themes legers pour demarrer rapidement des livres, posters, diapositives et theses.

## Themes inclus

| Theme | Usage | Fichier principal |
| --- | --- | --- |
| Lightweight Book | Documents de type livre et textes longs | `Lightweight Book/Book_EN.tex` |
| Lightweight Poster | Posters de conference et de recherche | `Lightweight Poster/Poster_EN.tex` |
| Lightweight Slides | Diapositives de presentation | `Lightweight Slides/Slides_EN.tex` |
| Lightweight Thesis | Redaction de memoires et theses | `Lightweight Thesis/Thesis_CN.tex` |

## Pourquoi cette collection

- Des mises en page claires, axees sur la lisibilite.
- Des fichiers de classe legers et simples a personnaliser.
- Une structure organisee pour les polices, references et figures.
- Des choix par defaut pratiques pour les workflows academiques.

## Demarrage rapide

1. Clonez ce depot :

```bash
git clone https://github.com/ruiyangzhou01/Lightweight-LaTeX.git
cd Lightweight-LaTeX
```

2. Ouvrez un dossier de theme et compilez le fichier principal `.tex`.

Recommande (si vous utilisez `latexmk`) :

```bash
cd "Lightweight Book"
latexmk -xelatex -synctex=1 -interaction=nonstopmode Book_EN.tex
```

Pour les autres themes, remplacez par :

- `Lightweight Poster/Poster_EN.tex`
- `Lightweight Slides/Slides_EN.tex`
- `Lightweight Thesis/Thesis_CN.tex`

3. Si votre editeur n'utilise pas `latexmk`, compilez avec votre chaine LaTeX preferee (par exemple XeLaTeX + BibTeX/Biber selon le modele).

## Structure du projet

```text
Lightweight-LaTeX/
|- Lightweight Book/
|- Lightweight Poster/
|- Lightweight Slides/
|- Lightweight Thesis/
|- LICENSE
`- README.md
```

Chaque dossier de theme contient son fichier de classe, sa bibliographie et ses ressources.

## Conseils de personnalisation

- Mettez a jour le contenu dans le fichier principal `.tex` de chaque theme.
- Remplacez les images dans chaque dossier `figures/`.
- Modifiez les references dans `refs.bib`.
- Ajustez la typographie et la mise en page dans le fichier `.cls` correspondant.

## Prerequis

- Une distribution TeX moderne : TeX Live, MiKTeX ou MacTeX.
- XeLaTeX est recommande pour une meilleure compatibilite des polices.
- Optionnel : `latexmk` pour automatiser la compilation.

## Versions linguistiques

- English: `README.md`
- Chinese (Simplified): `README.zh-CN.md`
- Deutsch: `README.de.md`
- Español: `README.es.md`
- Français: `README.fr.md`

## Licence

Ce projet est distribue sous licence MIT. Voir `LICENSE` pour les details.