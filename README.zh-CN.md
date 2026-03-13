# 轻量级 LaTeX 主题集

[English](README.md) | [简体中文](README.zh-CN.md) | [Deutsch](README.de.md) | [Español](README.es.md) | [Français](README.fr.md)

面向学术与技术写作的极简、优雅、实用 LaTeX 模板。

本仓库提供四套轻量级主题，可作为书籍、海报、幻灯片和论文的起点。

## 包含的主题

| 主题 | 用途 | 主文件 |
| --- | --- | --- |
| Lightweight Book | 书籍类文档与长篇写作 | `Lightweight Book/Book_EN.tex` |
| Lightweight Poster | 会议与科研海报 | `Lightweight Poster/Poster_EN.tex` |
| Lightweight Slides | 演示文稿幻灯片 | `Lightweight Slides/Slides_EN.tex` |
| Lightweight Thesis | 毕业论文与学位论文 | `Lightweight Thesis/Thesis_CN.tex` |

## 这个仓库的特点

- 干净的版式，突出可读性。
- 轻量级类文件，便于直接定制。
- 字体、参考文献、图片资源结构清晰。
- 面向学术工作流的实用默认配置。

## 快速开始

1. 克隆仓库：

```bash
git clone https://github.com/ruiyangzhou01/Lightweight-LaTeX.git
cd Lightweight-LaTeX
```

2. 进入任一主题目录并编译对应主 `.tex` 文件。

推荐方式（使用 `latexmk`）：

```bash
cd "Lightweight Book"
latexmk -xelatex -synctex=1 -interaction=nonstopmode Book_EN.tex
```

其他主题可替换为以下主文件：

- `Lightweight Poster/Poster_EN.tex`
- `Lightweight Slides/Slides_EN.tex`
- `Lightweight Thesis/Thesis_CN.tex`

3. 若你的编辑器不使用 `latexmk`，可按模板需求使用你偏好的 LaTeX 工具链（例如 XeLaTeX + BibTeX/Biber）。

## 项目结构

```text
Lightweight-LaTeX/
|- Lightweight Book/
|- Lightweight Poster/
|- Lightweight Slides/
|- Lightweight Thesis/
|- LICENSE
`- README.md
```

每个主题目录都包含独立的类文件、参考文献文件和资源目录。

## 定制建议

- 在各主题主 `.tex` 文件中修改正文内容。
- 在各 `figures/` 目录中替换图片。
- 在 `refs.bib` 中维护参考文献条目。
- 在对应 `.cls` 文件中调整排版和样式。

## 环境要求

- 现代 TeX 发行版：TeX Live、MiKTeX 或 MacTeX。
- 推荐使用 XeLaTeX 以获得更好的字体兼容性。
- 可选：使用 `latexmk` 简化构建流程。

## 多语言 README

- English: `README.md`
- 中文（简体）: `README.zh-CN.md`
- Deutsch: `README.de.md`
- Espanol: `README.es.md`
- Francais: `README.fr.md`

## 许可证

本项目使用 MIT License。详情见 `LICENSE`。