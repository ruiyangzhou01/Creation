\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lightweightbook}[2026/03/13 Lightweight Book class]
\makeatletter

\newif\iflightweightbook@afourpaper
\newif\iflightweightbook@chinese
\newif\iflightweightbook@openright
\newif\iflightweightbook@skipmainmatterbreak
\newif\iflightweightbook@pendingmainmatter
\lightweightbook@afourpaperfalse
\lightweightbook@chinesefalse
\lightweightbook@openrightfalse
\lightweightbook@skipmainmatterbreakfalse
\lightweightbook@pendingmainmatterfalse

\DeclareOption{a4paper}{\lightweightbook@afourpapertrue\PassOptionsToClass{a4paper}{ctexbook}}
\DeclareOption{bookpaper}{\lightweightbook@afourpaperfalse}
\DeclareOption{chinese}{\lightweightbook@chinesetrue}
\DeclareOption{english}{\lightweightbook@chinesefalse}
\DeclareOption{openright}{\lightweightbook@openrighttrue\PassOptionsToClass{openright}{ctexbook}}
\DeclareOption{openany}{\lightweightbook@openrightfalse\PassOptionsToClass{openany}{ctexbook}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ExecuteOptions{bookpaper,english,11pt,openany}
\ProcessOptions\relax

\LoadClass[UTF8]{ctexbook}

\iflightweightbook@openright
  \@openrighttrue
\else
  \@openrightfalse
\fi

\RequirePackage{iftex}
\ifXeTeX\else
  \ClassError{lightweightbook}{lightweightbook requires XeLaTeX}{Compile this document with XeLaTeX.}
\fi

\RequirePackage{fontspec}
\RequirePackage{mathtools}
\RequirePackage{etoolbox}
\RequirePackage{xparse}
\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{enumitem}
\RequirePackage[explicit]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{fancyhdr}
\RequirePackage{amsthm}
\RequirePackage{listings}
\RequirePackage[most]{tcolorbox}
\RequirePackage{xurl}
\RequirePackage[colorlinks=true,linktoc=all]{hyperref}
\RequirePackage{bookmark}

\usetikzlibrary{calc}

\iflightweightbook@afourpaper
  \geometry{
    a4paper,
    top=2.6cm,
    bottom=2.5cm,
    inner=2.6cm,
    outer=2.8cm,
    headheight=22pt,
    headsep=18pt,
    footskip=28pt
  }
\else
  \geometry{
    papersize={18.5cm,26cm},
    top=2.4cm,
    bottom=2.2cm,
    inner=2.0cm,
    outer=2.4cm,
    headheight=22pt,
    headsep=18pt,
    footskip=26pt
  }
\fi

\defaultfontfeatures{Ligatures=TeX,Scale=MatchLowercase}

\IfFontExistsTF{TeX Gyre Pagella}
  {\setmainfont{TeX Gyre Pagella}}
  {\setmainfont{Latin Modern Roman}}

\IfFileExists{fonts/Helvetica.ttf}{
  \setsansfont[
    Path=fonts/,
    Extension=.ttf,
    UprightFont=Helvetica,
    BoldFont=Helvetica-Bold,
    ItalicFont=Helvetica-Oblique,
    BoldItalicFont=Helvetica-BoldOblique
  ]{Helvetica}
}{
  \IfFontExistsTF{TeX Gyre Heros}
    {\setsansfont{TeX Gyre Heros}}
    {\setsansfont{Latin Modern Sans}}
}

\IfFontExistsTF{Consolas}
  {\setmonofont{Consolas}}
  {\setmonofont{Latin Modern Mono}}

\IfFontExistsTF{Source Han Serif SC}{\setCJKmainfont{Source Han Serif SC}}{}
\IfFontExistsTF{Source Han Sans SC}{\setCJKsansfont{Source Han Sans SC}}{}

\newcommand{\lightweightbookdisplayfont}{\sffamily\bfseries}
\newcommand{\lightweightbookchapterboxfont}{\sffamily\bfseries}

\IfFileExists{fonts/helvetica-rounded-bold.otf}{
  \newfontfamily\lightweightbookrounded[
    Path=fonts/,
    Extension=.otf,
    UprightFont=helvetica-rounded-bold
  ]{helvetica-rounded-bold}
}{}

\IfFileExists{fonts/helvetica-compressed.otf}{
  \newfontfamily\lightweightbookcompressed[
    Path=fonts/,
    Extension=.otf,
    UprightFont=helvetica-compressed
  ]{helvetica-compressed}
}{}

\definecolor{lightweightbookAccent}{HTML}{EB6A1F}
\definecolor{lightweightbookAccentDark}{HTML}{B94E0E}
\definecolor{lightweightbookAccentWash}{HTML}{FFF4EA}
\definecolor{lightweightbookInk}{HTML}{2D221B}
\definecolor{lightweightbookMuted}{HTML}{7D6C5E}
\definecolor{lightweightbookRule}{HTML}{E7C7AF}
\definecolor{lightweightbookSuccess}{HTML}{3D8B6D}
\definecolor{lightweightbookWarning}{HTML}{C15D12}
\definecolor{lightweightbookCodeBg}{HTML}{FFF7F0}
\definecolor{lightweightbookCodeComment}{HTML}{6F7F70}
\definecolor{lightweightbookCodeKeyword}{HTML}{A63F00}
\definecolor{lightweightbookCodeString}{HTML}{8B5B2B}

\graphicspath{{./}{figures/}{images/}}

\hypersetup{
  linkcolor=lightweightbookAccentDark,
  citecolor=lightweightbookAccentDark,
  urlcolor=lightweightbookAccentDark
}

\bookmarksetup{open,openlevel=2}

\newcommand{\lightweightbook@pagebreak}{\clearpage}

\setlength{\parindent}{1.5em}
\setlength{\parskip}{0.35em}
\linespread{1.05}
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000
\allowdisplaybreaks

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}

\setlist[itemize]{leftmargin=2em,topsep=4pt,itemsep=2pt}
\setlist[enumerate]{leftmargin=2.4em,topsep=4pt,itemsep=2pt}

\captionsetup{
  font=small,
  labelfont={bf,color=lightweightbookAccentDark},
  textfont={color=lightweightbookInk}
}

\iflightweightbook@chinese
  \renewcommand{\lightweightbookdisplayfont}{\bfseries}
  \renewcommand{\lightweightbookchapterboxfont}{\bfseries}
  \ctexset{chapter={name={第,章},number=\chinese{chapter}}}
  \renewcommand{\contentsname}{目录}
  \renewcommand{\listfigurename}{插图目录}
  \renewcommand{\listtablename}{表格目录}
  \renewcommand{\bibname}{参考文献}
  \renewcommand{\appendixname}{附录}
  \newcommand{\lightweightbook@abstractname}{摘要}
  \newcommand{\lightweightbook@prefacename}{前言}
  \newcommand{\lightweightbook@ackname}{致谢}
  \newcommand{\lightweightbook@summaryname}{摘要框}
  \newcommand{\lightweightbook@tipname}{提示}
  \newcommand{\lightweightbook@warningname}{注意}
  \newcommand{\lightweightbook@exampleboxname}{示例}
  \newcommand{\lightweightbook@authorlabel}{作者}
  \newcommand{\lightweightbook@publisherlabel}{机构}
  \newcommand{\lightweightbook@editionlabel}{版本}
  \newcommand{\lightweightbook@datelabel}{日期}
  \newcommand{\lightweightbook@theoremname}{定理}
  \newcommand{\lightweightbook@lemmaname}{引理}
  \newcommand{\lightweightbook@propositionname}{命题}
  \newcommand{\lightweightbook@corollaryname}{推论}
  \newcommand{\lightweightbook@definitionname}{定义}
  \newcommand{\lightweightbook@examplename}{示例}
  \newcommand{\lightweightbook@remarkname}{注}
\else
  \ctexset{chapter={name={,},number=\arabic{chapter}}}
  \ifdefined\lightweightbookrounded
    \renewcommand{\lightweightbookdisplayfont}{\lightweightbookrounded}
  \fi
  \ifdefined\lightweightbookcompressed
    \renewcommand{\lightweightbookchapterboxfont}{\lightweightbookcompressed}
  \fi
  \renewcommand{\contentsname}{Contents}
  \renewcommand{\listfigurename}{List of Figures}
  \renewcommand{\listtablename}{List of Tables}
  \renewcommand{\bibname}{References}
  \renewcommand{\appendixname}{Appendix}
  \renewcommand{\figurename}{Figure}
  \renewcommand{\tablename}{Table}
  \renewcommand{\proofname}{Proof}
  \newcommand{\lightweightbook@abstractname}{Abstract}
  \newcommand{\lightweightbook@prefacename}{Preface}
  \newcommand{\lightweightbook@ackname}{Acknowledgements}
  \newcommand{\lightweightbook@summaryname}{Summary}
  \newcommand{\lightweightbook@tipname}{Tip}
  \newcommand{\lightweightbook@warningname}{Warning}
  \newcommand{\lightweightbook@exampleboxname}{Example}
  \newcommand{\lightweightbook@authorlabel}{Author}
  \newcommand{\lightweightbook@publisherlabel}{Publisher}
  \newcommand{\lightweightbook@editionlabel}{Edition}
  \newcommand{\lightweightbook@datelabel}{Date}
  \newcommand{\lightweightbook@theoremname}{Theorem}
  \newcommand{\lightweightbook@lemmaname}{Lemma}
  \newcommand{\lightweightbook@propositionname}{Proposition}
  \newcommand{\lightweightbook@corollaryname}{Corollary}
  \newcommand{\lightweightbook@definitionname}{Definition}
  \newcommand{\lightweightbook@examplename}{Example}
  \newcommand{\lightweightbook@remarkname}{Remark}
\fi

\theoremstyle{plain}
\newtheorem{theorem}{\lightweightbook@theoremname}[chapter]
\newtheorem{lemma}[theorem]{\lightweightbook@lemmaname}
\newtheorem{proposition}[theorem]{\lightweightbook@propositionname}
\newtheorem{corollary}[theorem]{\lightweightbook@corollaryname}

\theoremstyle{definition}
\newtheorem{definition}[theorem]{\lightweightbook@definitionname}
\newtheorem{example}[theorem]{\lightweightbook@examplename}

\theoremstyle{remark}
\newtheorem{remark}[theorem]{\lightweightbook@remarkname}

\lstdefinestyle{lightweightbook}{
  backgroundcolor=\color{lightweightbookCodeBg},
  basicstyle=\small\ttfamily\color{lightweightbookInk},
  commentstyle=\itshape\color{lightweightbookCodeComment},
  keywordstyle=\bfseries\color{lightweightbookCodeKeyword},
  stringstyle=\color{lightweightbookCodeString},
  numberstyle=\scriptsize\color{lightweightbookMuted},
  numbers=left,
  stepnumber=1,
  numbersep=10pt,
  frame=single,
  framerule=0pt,
  rulecolor=\color{lightweightbookRule},
  framesep=10pt,
  breaklines=true,
  breakatwhitespace=false,
  columns=fullflexible,
  showstringspaces=false,
  tabsize=2,
  keepspaces=true,
  captionpos=b
}

\lstnewenvironment{codeblock}[1][]
  {\lstset{style=lightweightbook,#1}}
  {}

\tcbset{
  lightweightbook box/.style={
    enhanced,
    breakable,
    colback=white,
    coltitle=white,
    fonttitle=\lightweightbookdisplayfont,
    boxrule=0.7pt,
    arc=5pt,
    left=12pt,
    right=12pt,
    top=9pt,
    bottom=9pt,
    attach boxed title to top left={xshift=0.7em,yshift*=-\tcboxedtitleheight/2},
    boxed title style={
      boxrule=0pt,
      arc=4pt,
      left=8pt,
      right=8pt,
      top=5pt,
      bottom=5pt
    }
  }
}

\newtcolorbox{orangebox}[2][]{
  lightweightbook box,
  colframe=lightweightbookAccentDark,
  colback=lightweightbookAccentWash,
  boxed title style={colback=lightweightbookAccentDark},
  title={#2},
  #1
}

\newtcolorbox{summarybox}[1][]{
  lightweightbook box,
  colframe=lightweightbookAccentDark,
  colback=lightweightbookAccentWash,
  boxed title style={colback=lightweightbookAccentDark},
  title={\lightweightbook@summaryname},
  #1
}

\newtcolorbox{tipbox}[1][]{
  lightweightbook box,
  colframe=lightweightbookSuccess,
  colback=white,
  boxed title style={colback=lightweightbookSuccess},
  title={\lightweightbook@tipname},
  #1
}

\newtcolorbox{warningbox}[1][]{
  lightweightbook box,
  colframe=lightweightbookWarning,
  colback=white,
  boxed title style={colback=lightweightbookWarning},
  title={\lightweightbook@warningname},
  #1
}

\newtcolorbox{examplebox}[1][]{
  lightweightbook box,
  colframe=lightweightbookAccentDark,
  colback=white,
  boxed title style={colback=lightweightbookAccent},
  title={\lightweightbook@exampleboxname},
  #1
}

\renewcommand{\chaptermark}[1]{\markboth{\ifnum\value{chapter}>0 \thechapter\enspace\fi #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\enspace #1}}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\small\color{lightweightbookMuted}\nouppercase{\rightmark}}
\fancyhead[R]{\small\color{lightweightbookMuted}\nouppercase{\leftmark}}
\fancyfoot[C]{\color{lightweightbookAccentDark}\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\headrule}{\hbox to\headwidth{\color{lightweightbookRule}\leaders\hrule height \headrulewidth\hfill}}

\fancypagestyle{plain}{
  \fancyhf{}
  \fancyfoot[C]{\color{lightweightbookAccentDark}\thepage}
  \renewcommand{\headrulewidth}{0pt}
}

\newcommand{\lightweightbook@chapterlabel}[1]{%
  \tikz[baseline=(n.base)]{
    \node[
      fill=lightweightbookAccent,
      text=white,
      rounded corners=10pt,
      inner xsep=14pt,
      inner ysep=10pt,
      font=\lightweightbookchapterboxfont\fontsize{30}{30}\selectfont
    ] (n) {#1};
  }%
}

\newcommand{\lightweightbook@sectionlabel}[1]{%
  \tikz[baseline=(n.base)]{
    \node[
      fill=lightweightbookAccentWash,
      draw=lightweightbookAccent,
      text=lightweightbookAccentDark,
      rounded corners=6pt,
      inner xsep=9pt,
      inner ysep=5pt,
      font=\lightweightbookdisplayfont\small
    ] (n) {#1};
  }%
}

\newcommand{\lightweightbook@titlerule}{%
  \par\nobreak\vspace{0.7ex}%
  {\color{lightweightbookAccent}\rule{2.1cm}{1.1pt}}%
  \hspace{0.55em}%
  {\color{lightweightbookRule}\rule{\dimexpr\textwidth-2.65cm\relax}{1.1pt}}%
}

\titleformat{\chapter}[display]
  {\normalfont}
  {\lightweightbook@chapterlabel{\thechapter}}
  {1.1ex}
  {{\Huge\lightweightbookdisplayfont\color{lightweightbookInk}#1}\lightweightbook@titlerule}

\titleformat{name=\chapter,numberless}[display]
  {\normalfont}
  {}
  {0pt}
  {{\Huge\lightweightbookdisplayfont\color{lightweightbookInk}#1}\lightweightbook@titlerule}

\titleformat{\section}[hang]
  {\normalfont\Large\color{lightweightbookInk}}
  {\lightweightbook@sectionlabel{\thesection}}
  {0.8em}
  {{\sffamily\bfseries #1}}
  [\vspace{0.35ex}{\color{lightweightbookRule}\titlerule}]

\titleformat{\subsection}[hang]
  {\normalfont\large\bfseries\color{lightweightbookAccentDark}}
  {\thesubsection}
  {0.8em}
  {#1}

\titleformat{\subsubsection}[runin]
  {\normalfont\bfseries\color{lightweightbookInk}}
  {\thesubsubsection}
  {0.6em}
  {#1}
  [.\enspace]

\titlespacing*{\chapter}{0pt}{0pt}{2.1em}
\titlespacing*{\section}{0pt}{1.8em}{0.8em}
\titlespacing*{\subsection}{0pt}{1.2em}{0.45em}
\titlespacing*{\subsubsection}{0pt}{0.9em}{0.6em}

\titlecontents{chapter}
  [0pt]
  {\addvspace{0.8em}\lightweightbookdisplayfont\color{lightweightbookInk}}
  {\contentslabel{2.5em}}
  {}
  {\titlerule*[0.6pc]{.}\contentspage}

\titlecontents{section}
  [2.8em]
  {\small\color{lightweightbookInk}}
  {\contentslabel{2.3em}}
  {}
  {\titlerule*[0.6pc]{.}\contentspage}

\titlecontents{subsection}
  [5.3em]
  {\footnotesize\color{lightweightbookMuted}}
  {\contentslabel{2.8em}}
  {}
  {\titlerule*[0.6pc]{.}\contentspage}

\def\lightweightbook@title{Lightweight Book}
\def\lightweightbook@subtitle{}
\def\lightweightbook@author{}
\def\lightweightbook@publisher{}
\def\lightweightbook@edition{}
\def\lightweightbook@date{\today}
\def\lightweightbook@tagline{}
\def\lightweightbook@coverimage{}
\def\lightweightbook@coverwidth{0.62\textwidth}
\def\lightweightbook@coverlabelwidth{0.24\textwidth}
\newcounter{lightweightbookfrontmatter}

\NewDocumentCommand{\booktitle}{m}{\gdef\lightweightbook@title{#1}}
\NewDocumentCommand{\booksubtitle}{m}{\gdef\lightweightbook@subtitle{#1}}
\NewDocumentCommand{\subtitle}{m}{\booksubtitle{#1}}
\NewDocumentCommand{\bookauthor}{m}{\gdef\lightweightbook@author{#1}}
\NewDocumentCommand{\bookpublisher}{m}{\gdef\lightweightbook@publisher{#1}}
\NewDocumentCommand{\bookedition}{m}{\gdef\lightweightbook@edition{#1}}
\NewDocumentCommand{\bookdate}{m}{\gdef\lightweightbook@date{#1}}
\NewDocumentCommand{\booktagline}{m}{\gdef\lightweightbook@tagline{#1}}
\NewDocumentCommand{\bookcoverimage}{m}{\gdef\lightweightbook@coverimage{#1}}

\renewcommand{\title}[1]{\booktitle{#1}}
\renewcommand{\author}[1]{\bookauthor{#1}}
\renewcommand{\date}[1]{\bookdate{#1}}
\let\lightweightbook@chapterbreak\CTEX@chapter@break
\let\lightweightbook@mainmatter\mainmatter
\renewcommand{\CTEX@chapter@break}{%
  \iflightweightbook@pendingmainmatter
    \lightweightbook@chapterbreak
    \pagenumbering{arabic}%
    \global\lightweightbook@pendingmainmatterfalse
  \else
    \lightweightbook@chapterbreak
  \fi
}

\renewcommand{\mainmatter}{%
  \iflightweightbook@skipmainmatterbreak
    \@mainmattertrue
    \global\lightweightbook@pendingmainmattertrue
    \global\lightweightbook@skipmainmatterbreakfalse
  \else
    \lightweightbook@mainmatter
  \fi
}

\AtBeginDocument{
  \hypersetup{
    pdftitle={\lightweightbook@title},
    pdfauthor={\lightweightbook@author},
    pdfsubject={\lightweightbook@tagline}
  }
}

\newcommand{\lightweightbook@coverdetails}{%
  \begin{tabularx}{\lightweightbook@coverwidth}{@{}>{\color{white!75}\bfseries\Large\raggedleft\arraybackslash}p{\lightweightbook@coverlabelwidth}@{\hspace{1.5em}}>{\color{white}\Large\raggedright\arraybackslash}X@{}}
    \lightweightbook@authorlabel & \lightweightbook@author \\
    \ifdefempty{\lightweightbook@publisher}{}{\lightweightbook@publisherlabel & \lightweightbook@publisher \\}
    \ifdefempty{\lightweightbook@edition}{}{\lightweightbook@editionlabel & \lightweightbook@edition \\}
    \lightweightbook@datelabel & \lightweightbook@date \\
  \end{tabularx}
}

\newcommand{\makebookcover}{%
  \lightweightbook@pagebreak
  \pdfbookmark[0]{\lightweightbook@title}{cover}
  \begin{titlepage}
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture,overlay]
      \path[shade,left color=lightweightbookAccentDark,right color=lightweightbookAccent]
        (current page.south west) rectangle (current page.north east);
      \fill[white,opacity=0.08]
        (current page.north west) rectangle ([xshift=.33\paperwidth]current page.south west);
      \fill[white,opacity=0.08]
        ([xshift=-1.6cm,yshift=-1.6cm]current page.north east) circle (2.7cm);
      \fill[white,opacity=0.06]
        ([xshift=-0.8cm,yshift=1.2cm]current page.south east) circle (4.2cm);
      \ifdefempty{\lightweightbook@coverimage}{}{%
        \node[anchor=south east,inner sep=0pt,opacity=0.16]
          at ([xshift=-1.2cm,yshift=1.2cm]current page.south east)
          {\includegraphics[width=.46\paperwidth,height=.78\paperheight,keepaspectratio]{\lightweightbook@coverimage}};
      }
    \end{tikzpicture}

    \vspace*{0.12\paperheight}
    \noindent\begin{minipage}[t]{\lightweightbook@coverwidth}
      \raggedright
      {\color{white}\lightweightbookdisplayfont\fontsize{28}{31}\selectfont \lightweightbook@title\par}
      \ifdefempty{\lightweightbook@subtitle}{}{%
        \vspace{0.7em}
        {\color{white!92}\Large \lightweightbook@subtitle\par}
      }
      \ifdefempty{\lightweightbook@tagline}{}{%
        \vspace{2.1em}
        {\color{white!80}\large \lightweightbook@tagline\par}
      }
    \end{minipage}

    \vfill
    \noindent\lightweightbook@coverdetails
    \vspace*{1.5cm}
  \end{titlepage}
}

\renewcommand{\maketitle}{\makebookcover}

\newcommand{\lightweightbook@frontchapter}[1]{%
  \stepcounter{lightweightbookfrontmatter}
  \phantomsection
  \pdfbookmark[0]{#1}{lightweightbook-front-\arabic{lightweightbookfrontmatter}}
  \addcontentsline{toc}{chapter}{#1}
  \markboth{#1}{#1}
  \thispagestyle{plain}
  \begingroup
    \parindent=0pt
    {\Huge\lightweightbookdisplayfont\color{lightweightbookInk}#1\par}
    \lightweightbook@titlerule
  \endgroup
  \par\vspace{1.4em}\noindent
}

\NewDocumentEnvironment{bookabstract}{O{\lightweightbook@abstractname}}
  {\lightweightbook@frontchapter{#1}\ignorespaces}
  {\par\lightweightbook@pagebreak}

\NewDocumentEnvironment{preface}{O{\lightweightbook@prefacename}}
  {\lightweightbook@frontchapter{#1}\ignorespaces}
  {\par\lightweightbook@pagebreak}

\NewDocumentEnvironment{acknowledgements}{O{\lightweightbook@ackname}}
  {\lightweightbook@frontchapter{#1}\ignorespaces}
  {\par}

\NewDocumentEnvironment{dedication}{}
  {\thispagestyle{empty}\null\vfill\begin{flushright}\itshape\color{lightweightbookMuted}}
  {\end{flushright}\vfill\null\lightweightbook@pagebreak}

\NewDocumentEnvironment{chapterquote}{O{}}
  {\begin{flushright}\begin{minipage}{0.72\textwidth}\itshape\color{lightweightbookMuted}}
  {%
    \ifstrempty{#1}{}{\par\raggedleft\upshape\small\color{lightweightbookAccentDark}#1}
    \end{minipage}
    \end{flushright}
    \vspace{1em}
  }

\newcommand{\printbookcontents}{%
  \lightweightbook@frontchapter{\contentsname}
  \@starttoc{toc}
  \global\lightweightbook@skipmainmatterbreaktrue
}

\newcommand{\printbooklists}{%
  \lightweightbook@frontchapter{\listfigurename}
  \@starttoc{lof}
  \lightweightbook@pagebreak
  \lightweightbook@frontchapter{\listtablename}
  \@starttoc{lot}
  \global\lightweightbook@skipmainmatterbreaktrue
}

\makeatother
\endinput
