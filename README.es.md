# Temas Lightweight para LaTeX

[English](README.md) | [简体中文](README.zh-CN.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Français](README.fr.md)

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](LICENSE)
[![Made with LaTeX](https://img.shields.io/badge/Made%20with-LaTeX-008080.svg)](https://www.latex-project.org/)

Una coleccion moderna de temas LaTeX ligeros para libros, posters, diapositivas y tesis.

Este repositorio esta pensado para flujos academicos reales: tipografia clara, personalizacion sencilla y estructura de proyecto facil de mantener.

## Tabla de contenidos

- [Puntos clave](#puntos-clave)
- [Plantillas](#plantillas)
- [Inicio rapido](#inicio-rapido)
- [Comandos de compilacion](#comandos-de-compilacion)
- [Estructura del proyecto](#estructura-del-proyecto)
- [Guia de personalizacion](#guia-de-personalizacion)
- [Solucion de problemas](#solucion-de-problemas)
- [FAQ](#faq)
- [Como contribuir](#como-contribuir)
- [Cita](#cita)
- [Licencia](#licencia)

## Puntos clave

- Plantillas orientadas a escenarios academicos frecuentes.
- Archivos de clase ligeros con puntos de ajuste claros.
- Bibliografia y recursos separados por plantilla.
- Flujo recomendado con XeLaTeX para mejor compatibilidad tipografica.

## Plantillas

| Plantilla | Ideal para | Archivo de entrada | Archivo de clase |
| --- | --- | --- | --- |
| Lightweight Book | Monografias, apuntes, documentos extensos | `Lightweight Book/Book_EN.tex` | `Lightweight Book/lightweightbook.cls` |
| Lightweight Poster | Posters de congreso e investigacion | `Lightweight Poster/Poster_EN.tex` | `Lightweight Poster/lightweight-poster.cls` |
| Lightweight Slides | Presentaciones, defensas, clases | `Lightweight Slides/Slides_EN.tex` | `Lightweight Slides/lightweight-slides.cls` |
| Lightweight Thesis | Tesis de grado y posgrado | `Lightweight Thesis/Thesis_CN.tex` | `Lightweight Thesis/lightweight-thesis.cls` |

## Inicio rapido

1. Clona el repositorio.

```bash
git clone https://github.com/ruiyangzhou01/Lightweight-LaTeX.git
cd Lightweight-LaTeX
```

2. Elige una plantilla y abre su archivo principal `.tex`.

3. Compila con XeLaTeX (preferiblemente usando `latexmk`).

Ejemplo:

```bash
cd "Lightweight Book"
latexmk -xelatex -interaction=nonstopmode -synctex=1 Book_EN.tex
```

## Comandos de compilacion

| Plantilla | Comando |
| --- | --- |
| Book | `cd "Lightweight Book"; latexmk -xelatex Book_EN.tex` |
| Poster | `cd "Lightweight Poster"; latexmk -xelatex Poster_EN.tex` |
| Slides | `cd "Lightweight Slides"; latexmk -xelatex Slides_EN.tex` |
| Thesis | `cd "Lightweight Thesis"; latexmk -xelatex Thesis_CN.tex` |

Si no tienes `latexmk`, usa la secuencia manual:

```bash
xelatex MAIN_FILE.tex
bibtex MAIN_FILE
xelatex MAIN_FILE.tex
xelatex MAIN_FILE.tex
```

## Estructura del proyecto

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

## Guia de personalizacion

1. Contenido: edita el archivo `.tex` de entrada.
2. Bibliografia: actualiza `refs.bib` dentro de cada plantilla.
3. Imagenes: reemplaza los recursos en `figures/`.
4. Estilo y tipografia: ajusta la configuracion en el archivo `.cls`.
5. Idiomas: duplica la plantilla mas cercana y adapta el texto.

## Solucion de problemas

- Faltan fuentes: instala las fuentes requeridas o usa fuentes del sistema en la clase.
- La bibliografia no aparece: ejecuta `xelatex -> bibtex -> xelatex -> xelatex`.
- Referencias sin resolver: recompila al menos dos veces despues de cambios.
- Error de motor: usa XeLaTeX como opcion principal.

## FAQ

### Con que plantilla conviene empezar?

Empieza por la que se parezca mas a tu objetivo final (libro, poster, diapositivas, tesis).

### Puedo usar LuaLaTeX o pdfLaTeX?

Puede funcionar, pero estas plantillas estan orientadas y probadas principalmente con XeLaTeX.

### Se pueden mezclar modulos entre plantillas?

Si. Copia los bloques necesarios y revisa opciones de paquetes y definiciones de estilo.

## Como contribuir

Las contribuciones son bienvenidas.

- Abre un issue para reportar errores o proponer mejoras.
- Abre un pull request con descripcion clara y, si es posible, comparacion PDF antes/despues.

Issues del proyecto: <https://github.com/ruiyangzhou01/Lightweight-LaTeX/issues>

## Cita

Si este repositorio te resulta util en investigacion o docencia, puedes citarlo asi:

```bibtex
@misc{zhou_lightweight_latex_themes,
	author = {Ruiyang Zhou},
	title = {Lightweight LaTeX Themes},
	year = {2026},
	howpublished = {\url{https://github.com/ruiyangzhou01/Lightweight-LaTeX}}
}
```

## Licencia

Este proyecto se distribuye bajo la GNU General Public License v3.0 (GPL-3.0). Consulta `LICENSE` para mas detalles.