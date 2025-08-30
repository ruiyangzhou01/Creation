# Creation Theme

<p>
    <img src="https://img.shields.io/github/v/release/ruiyangzhou01/Creation?&color=blue&logo=hack-the-box)" />
    <img alt="LaTeX" src="https://img.shields.io/badge/-LaTeX-9f62a5?style=flat&logo=LaTeX&logoColor=white" />
</p>

[English Readme](https://github.com/ruiyangzhou01/Creation/blob/main/README.md) · [中文文档](https://github.com/ruiyangzhou01/Creation/blob/main/README_zh.md)

A modern LaTeX Beamer Theme for academic report, thesis defense, and presentations.

## Features

- Trace simple variable among the file.
- Trace array variable among the file.
- Trace variable in the cycle.
- Add description with variable.
- Information including variable name, variable type, value, function container, the line of the trace code, cycle number, and the description.

### Screenshot

1

## Install

[GitHub releases page](https://github.com/ruiyangzhou01/Creation/releases), click on `Assets` at the bottom to show the files available in the release and then click on the head file you want to download. Finally, include the head file in your project.

## Usage

The library now has two main API:

```
trace(varName, [a list including cycle variables], [a string of the description])
traceArr(varName, [a list including cycle variables], [a string of the description])
```

First include the head file in your project by `#include "CppTrace.h"`, and then call the two function in the program, it can print the variable's information to command window, including variable name, variable type, value, function container, the line of the trace code, cycle number, and the description.

## Contact

Author: ruiyangzhou01

Email: [Fentaniao@gmail.com](mailto:Fentaniao@gmail.com)

## License

[GPL-3.0 License](https://github.com/ruiyangzhou01/Creation/blob/main/LICENSE) © ruiyangzhou01
