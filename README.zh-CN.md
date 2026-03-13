# 轻量级 LaTeX 主题集

[English](README.md) | [简体中文](README.zh-CN.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Français](README.fr.md)

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Made with LaTeX](https://img.shields.io/badge/Made%20with-LaTeX-008080.svg)](https://www.latex-project.org/)

一套面向学术与技术写作的现代、轻量级 LaTeX 主题模板，覆盖书籍、海报、幻灯片与论文场景。

本仓库强调实用工作流：版式清晰、结构简洁、可维护性强，方便在教学和科研项目中长期使用。

## 目录

- [亮点](#亮点)
- [模板一览](#模板一览)
- [快速开始](#快速开始)
- [构建命令](#构建命令)
- [项目结构](#项目结构)
- [定制指南](#定制指南)
- [故障排查](#故障排查)
- [常见问题](#常见问题)
- [贡献方式](#贡献方式)
- [引用](#引用)
- [许可证](#许可证)

## 亮点

- 针对常见学术写作场景设计，开箱即用。
- 类文件轻量，改样式时修改点清晰。
- 每个模板目录独立管理文献与资源。
- 以 XeLaTeX 为优先，字体兼容性更好。

## 模板一览

| 模板 | 适用场景 | 入口文件 | 类文件 |
| --- | --- | --- | --- |
| Lightweight Book | 专著、讲义、长文档 | `Lightweight Book/Book_EN.tex` | `Lightweight Book/lightweightbook.cls` |
| Lightweight Poster | 会议海报、课题展示 | `Lightweight Poster/Poster_EN.tex` | `Lightweight Poster/lightweight-poster.cls` |
| Lightweight Slides | 报告、答辩、课程演示 | `Lightweight Slides/Slides_EN.tex` | `Lightweight Slides/lightweight-slides.cls` |
| Lightweight Thesis | 本科/硕博论文写作 | `Lightweight Thesis/Thesis_CN.tex` | `Lightweight Thesis/lightweight-thesis.cls` |

## 快速开始

1. 克隆仓库。

```bash
git clone https://github.com/ruiyangzhou01/Lightweight-LaTeX.git
cd Lightweight-LaTeX
```

2. 选择一个模板目录，打开其入口 `.tex` 文件。

3. 推荐使用 XeLaTeX（最好通过 `latexmk`）进行编译。

示例：

```bash
cd "Lightweight Book"
latexmk -xelatex -interaction=nonstopmode -synctex=1 Book_EN.tex
```

## 构建命令

| 模板 | 命令 |
| --- | --- |
| Book | `cd "Lightweight Book" && latexmk -xelatex Book_EN.tex` |
| Poster | `cd "Lightweight Poster" && latexmk -xelatex Poster_EN.tex` |
| Slides | `cd "Lightweight Slides" && latexmk -xelatex Slides_EN.tex` |
| Thesis | `cd "Lightweight Thesis" && latexmk -xelatex Thesis_CN.tex` |

如果未安装 `latexmk`，可使用手动编译流程：

```bash
xelatex <main-file>.tex
bibtex <main-file>
xelatex <main-file>.tex
xelatex <main-file>.tex
```

## 项目结构

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

## 定制指南

1. 正文内容：修改入口 `.tex` 文件。
2. 文献管理：更新同目录下的 `refs.bib`。
3. 图片资源：替换 `figures/` 中的图片。
4. 版式与字体：调整对应 `.cls` 文件参数。
5. 多语言写作：复制最接近的模板后再本地化。

## 故障排查

- 字体缺失：安装对应字体，或在类文件里切换为系统已安装字体。
- 参考文献不显示：执行完整流程 `xelatex -> bibtex -> xelatex -> xelatex`。
- 交叉引用未更新：文献或标签改动后至少再编译两次。
- 编译引擎不匹配：优先使用 XeLaTeX。

## 常见问题

### 应该从哪个模板开始？

优先选与你当前任务最接近的模板（书籍/海报/幻灯片/论文），通常比后期迁移更省时间。

### 可以用 LuaLaTeX 或 pdfLaTeX 吗？

理论上可以尝试，但本仓库主要面向 XeLaTeX 进行设计与测试。

### 可以混用不同模板中的模块吗？

可以。复制所需部分后，注意统一宏包选项与类文件中的样式定义。

## 贡献方式

欢迎贡献改进。

- 通过 Issue 提交 Bug、功能建议或样式优化建议。
- 通过 Pull Request 提交修改，建议附带修改前后 PDF 对比截图。

项目 Issue 地址：<https://github.com/ruiyangzhou01/Lightweight-LaTeX/issues>

## 引用

如果本仓库对你的研究或教学材料有帮助，欢迎引用：

```bibtex
@misc{zhou_lightweight_latex_themes,
	author = {Ruiyang Zhou},
	title = {Lightweight LaTeX Themes},
	year = {2026},
	howpublished = {\url{https://github.com/ruiyangzhou01/Lightweight-LaTeX}}
}
```

## 许可证

本项目采用 MIT License。详情见 `LICENSE`。