# Temas Lightweight para LaTeX

[English](README.md) | [简体中文](README.zh-CN.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Français](README.fr.md)

Plantillas LaTeX minimalistas, elegantes y prácticas para escritura académica y técnica.

Este repositorio incluye cuatro temas ligeros que sirven como punto de partida para libros, pósteres, diapositivas y tesis.

## Temas incluidos

| Tema | Propósito | Archivo principal |
| --- | --- | --- |
| Lightweight Book | Documentos tipo libro y escritura extensa | `Lightweight Book/Book_EN.tex` |
| Lightweight Poster | Pósteres de conferencia e investigación | `Lightweight Poster/Poster_EN.tex` |
| Lightweight Slides | Diapositivas para presentaciones | `Lightweight Slides/Slides_EN.tex` |
| Lightweight Thesis | Redacción de tesis y disertaciones | `Lightweight Thesis/Thesis_CN.tex` |

## Por qué esta colección

- Diseños limpios centrados en la legibilidad.
- Archivos de clase ligeros y fáciles de personalizar.
- Estructura organizada para fuentes, bibliografía e imágenes.
- Configuración por defecto práctica para flujos académicos.

## Inicio rapido

1. Clona el repositorio:

```bash
git clone https://github.com/ruiyangzhou01/Lightweight-LaTeX.git
cd Lightweight-LaTeX
```

2. Abre una carpeta de tema y compila su archivo principal `.tex`.

Recomendado (si usas `latexmk`):

```bash
cd "Lightweight Book"
latexmk -xelatex -synctex=1 -interaction=nonstopmode Book_EN.tex
```

Para los otros temas, sustituye por:

- `Lightweight Poster/Poster_EN.tex`
- `Lightweight Slides/Slides_EN.tex`
- `Lightweight Thesis/Thesis_CN.tex`

3. Si tu editor no usa `latexmk`, compila con tu cadena de herramientas LaTeX preferida (por ejemplo XeLaTeX + BibTeX/Biber según la plantilla).

## Estructura del proyecto

```text
Lightweight-LaTeX/
|- Lightweight Book/
|- Lightweight Poster/
|- Lightweight Slides/
|- Lightweight Thesis/
|- LICENSE
`- README.md
```

Cada carpeta de tema incluye su archivo de clase, bibliografía y recursos.

## Consejos de personalización

- Actualiza el contenido en el archivo principal `.tex` de cada tema.
- Reemplaza imágenes en cada carpeta `figures/`.
- Edita las referencias bibliográficas en `refs.bib`.
- Ajusta tipografía y diseño en el archivo `.cls` correspondiente.

## Requisitos

- Una distribución TeX moderna: TeX Live, MiKTeX o MacTeX.
- Se recomienda XeLaTeX para mejor compatibilidad de fuentes.
- Opcional: `latexmk` para automatizar la compilación.

## Versiones de idioma

- English: `README.md`
- Chinese (Simplified): `README.zh-CN.md`
- Deutsch: `README.de.md`
- Español: `README.es.md`
- Français: `README.fr.md`

## Licencia

Este proyecto está bajo la licencia MIT. Consulta `LICENSE` para más detalles.