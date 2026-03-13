# Themes Lightweight LaTeX

[English](README.md) | [简体中文](README.zh-CN.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Français](README.fr.md)

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](LICENSE)
[![Made with LaTeX](https://img.shields.io/badge/Made%20with-LaTeX-008080.svg)](https://www.latex-project.org/)

Une collection moderne de themes LaTeX legers pour livres, posters, diapositives et theses.

Ce depot vise des workflows academiques concrets : typographie lisible, personnalisation simple et structure de projet facile a maintenir.

## Sommaire

- [Points forts](#points-forts)
- [Modeles](#modeles)
- [Demarrage rapide](#demarrage-rapide)
- [Commandes de compilation](#commandes-de-compilation)
- [Structure du projet](#structure-du-projet)
- [Guide de personnalisation](#guide-de-personnalisation)
- [Depannage](#depannage)
- [FAQ](#faq)
- [Contribuer](#contribuer)
- [Citation](#citation)
- [Licence](#licence)

## Points forts

- Modeles concus pour les cas d'usage academiques les plus frequents.
- Fichiers de classe legers avec points de personnalisation explicites.
- Bibliographie et ressources separees par modele.
- Workflow recommande avec XeLaTeX pour une meilleure compatibilite des polices.

## Modeles

| Modele | Ideal pour | Fichier d'entree | Fichier de classe |
| --- | --- | --- | --- |
| Lightweight Book | Monographies, cours, documents longs | `Lightweight Book/Book_EN.tex` | `Lightweight Book/lightweightbook.cls` |
| Lightweight Poster | Posters de conference et de recherche | `Lightweight Poster/Poster_EN.tex` | `Lightweight Poster/lightweight-poster.cls` |
| Lightweight Slides | Presentations, soutenances, cours | `Lightweight Slides/Slides_EN.tex` | `Lightweight Slides/lightweight-slides.cls` |
| Lightweight Thesis | Memoires et theses | `Lightweight Thesis/Thesis_CN.tex` | `Lightweight Thesis/lightweight-thesis.cls` |

## Demarrage rapide

1. Clonez le depot.

```bash
git clone https://github.com/ruiyangzhou01/Lightweight-LaTeX.git
cd Lightweight-LaTeX
```

2. Choisissez un modele et ouvrez son fichier `.tex` principal.

3. Compilez avec XeLaTeX (de preference via `latexmk`).

Exemple :

```bash
cd "Lightweight Book"
latexmk -xelatex -interaction=nonstopmode -synctex=1 Book_EN.tex
```

## Commandes de compilation

| Modele | Commande |
| --- | --- |
| Book | `cd "Lightweight Book"; latexmk -xelatex Book_EN.tex` |
| Poster | `cd "Lightweight Poster"; latexmk -xelatex Poster_EN.tex` |
| Slides | `cd "Lightweight Slides"; latexmk -xelatex Slides_EN.tex` |
| Thesis | `cd "Lightweight Thesis"; latexmk -xelatex Thesis_CN.tex` |

Si `latexmk` n'est pas disponible, utilisez la sequence manuelle :

```bash
xelatex MAIN_FILE.tex
bibtex MAIN_FILE
xelatex MAIN_FILE.tex
xelatex MAIN_FILE.tex
```

## Structure du projet

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

## Guide de personnalisation

1. Contenu : modifiez le fichier `.tex` d'entree.
2. Bibliographie : mettez a jour `refs.bib` dans chaque dossier.
3. Images : remplacez les ressources dans `figures/`.
4. Style et typographie : ajustez les options dans le fichier `.cls`.
5. Multilingue : dupliquez le modele le plus proche puis adaptez.

## Depannage

- Polices manquantes : installez les polices necessaires ou utilisez des polices systeme.
- Bibliographie absente : lancez `xelatex -> bibtex -> xelatex -> xelatex`.
- References non resolues : recompilez au moins deux fois apres modification.
- Probleme de moteur : preferez XeLaTeX.

## FAQ

### Par quel modele commencer ?

Choisissez d'abord le modele le plus proche de votre objectif final (livre, poster, slides, these).

### Puis-je utiliser LuaLaTeX ou pdfLaTeX ?

C'est possible, mais ces themes sont surtout concus et testes pour XeLaTeX.

### Puis-je combiner des modules de plusieurs modeles ?

Oui. Copiez ce dont vous avez besoin puis harmonisez les options des packages et les definitions de style.

## Contribuer

Les contributions sont les bienvenues.

- Ouvrez une issue pour signaler un bug ou proposer une amelioration.
- Ouvrez une pull request avec une description claire et, si possible, un comparatif PDF avant/apres.

Issues du projet : <https://github.com/ruiyangzhou01/Lightweight-LaTeX/issues>

## Citation

Si ce depot vous aide en recherche ou en enseignement, vous pouvez le citer ainsi :

```bibtex
@misc{zhou_lightweight_latex_themes,
	author = {Ruiyang Zhou},
	title = {Lightweight LaTeX Themes},
	year = {2026},
	howpublished = {\url{https://github.com/ruiyangzhou01/Lightweight-LaTeX}}
}
```

## Licence

Ce projet est distribue sous licence GNU General Public License v3.0 (GPL-3.0). Voir `LICENSE` pour les details.