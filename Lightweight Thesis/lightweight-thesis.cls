\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lightweight-thesis}

\LoadClass[12pt,a4paper,openany,twoside]{book}

\RequirePackage[a4paper,
	inner=3.17cm, outer=3.17cm, top=2.54cm, bottom=2.54cm,
	headheight=15pt, headsep=25pt, footskip=30pt,
	heightrounded]{geometry}

\RequirePackage{pdfpages}

\raggedbottom
%-----------------------------------------------------------------------
\RequirePackage[UTF8]{ctex}

% 中文字体
\RequirePackage{xeCJK}
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{FangSong}
\setCJKfamilyfont{boldsong}{SimSun}

% 西文字体
\RequirePackage{fontspec}
\setromanfont{Times New Roman}
\setsansfont{Arial}
\setmonofont[Color={0019D4}]{Courier New}

% Math font
\RequirePackage{mathtools}
\RequirePackage{unicode-math}
%\setmathfont{Latin Modern Math}
%\setmathfont[range={\mathcal,\mathbfcal},StylisticSet=1]{XITS Math}
%\setmathfont[range=\mathscr]{XITS Math}


%-----------------------------------------------------------------------
% For placeholder text
\RequirePackage{lipsum}

% Add content, references to toc
\RequirePackage{tocbibind}

% For place blindtext
\RequirePackage{blindtext}

% For table of contents
\RequirePackage{titletoc}

% For title format
\RequirePackage{titlesec}

% For fancy
\RequirePackage{fancyhdr}
\pagestyle{fancy}

% Math symbols
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{siunitx}
\RequirePackage{romannum}

% Block
\newtheorem{theorem}{定理}
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}[theorem]{Lemma}

\newtheorem{definition}{定义}

% Figures and Tables
\RequirePackage{graphicx}
\graphicspath{{figures/}}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\RequirePackage{threeparttable}

% Code
\RequirePackage{algorithm}
\RequirePackage{algorithmic}

% References
\RequirePackage[square,numbers,sort&compress]{natbib}

% Misc
\RequirePackage{hyperref}


%-----------------------------------------------------------------------
% ## Bookmark

\RequirePackage{bookmark}
\bookmarksetup{
	open,
	openlevel=2,
	addtohook={%
		\if@mainmatter
		\ifnum\bookmarkget{level}=0 %
		\preto\bookmark@text{\chaptertitlename \space}%
		\fi
		\ifnum\bookmarkget{level}=1 %
		\preto\bookmark@text{\thesection \space}%
		\fi
		\fi
	},
}


%-----------------------------------------------------------------------
% ## Macro
\newcommand{\chinesespace}{\char"3000}

\newcommand{\zh@thetitle}{\chinesespace}
\newcommand{\zh@theauthor}{\chinesespace}
\newcommand{\zh@thedate}{\chinesespace}
\newcommand{\zh@thecourse}{\chinesespace}
\newcommand{\zh@theschool}{\chinesespace}
\newcommand{\zh@themajor}{\chinesespace}
\newcommand{\zh@theadvisor}{\chinesespace}

\newcommand{\en@thetitle}{\chinesespace}
\newcommand{\en@theauthor}{\chinesespace}
\newcommand{\en@thedate}{\chinesespace}
\newcommand{\en@thecourse}{\chinesespace}
\newcommand{\en@theschool}{\chinesespace}
\newcommand{\en@themajor}{\chinesespace}
\newcommand{\en@theadvisor}{\chinesespace}

\newcommand{\thestudentnumber}{\chinesespace}

\renewcommand{\title}[2]{
	\renewcommand{\zh@thetitle}{#1}
	\renewcommand{\en@thetitle}{#2}
}

\newcommand{\coursename}[2]{
	\renewcommand{\zh@thecourse}{#1}
	\renewcommand{\en@thecourse}{#2}
}

\renewcommand{\author}[2]{
	\renewcommand{\zh@theauthor}{#1}
	\renewcommand{\en@theauthor}{#2}
}

\renewcommand{\date}[2]{
	\renewcommand{\zh@thedate}{#1}
	\renewcommand{\en@thedate}{#2}
}

\newcommand{\major}[2]{
	\renewcommand{\zh@themajor}{#1}
	\renewcommand{\en@themajor}{#2}
}

\newcommand{\school}[2]{
	\renewcommand{\zh@theschool}{#1}
	\renewcommand{\en@theschool}{#2}
}

\newcommand{\advisor}[2]{
	\renewcommand{\zh@theadvisor}{#1}
	\renewcommand{\en@theadvisor}{#2}
}

\newcommand{\studentnumber}[1]{
	\renewcommand{\thestudentnumber}{#1}
}


%-----------------------------------------------------------------------
% ## Titlepage

\renewcommand{\maketitle}{
	\thispagestyle{empty}
	\setlength{\extrarowheight}{9pt}
	\pdfbookmark{封面}{cover}

	\begin{center}
		\fontsize{22pt}{22pt}\selectfont X\hspace{0.5em}X\hspace{0.5em}X\hspace{0.5em}X\hspace{0.5em}大\hspace{0.5em}学 \\[7bp]

		\fontsize{12pt}{12pt}\selectfont UNIVERSITY UNIVERSITY UNIVERSITY UNIVERSITY \\[36bp]

		\includegraphics[width=180bp]{logo} \\[40bp]

		\bfseries\fontsize{22pt}{22pt}\selectfont \zh@thecourse 课程论文 \\[40bp]

		\begin{tabular}{>{\bfseries\fontsize{18pt}{18pt}\selectfont}l>{\centering\arraybackslash\normalfont\fontsize{18pt}{18pt}\selectfont}p{4.2in}}
			论文题目 & \multirow[t]{2}{4.2in}{\centering \zh@thetitle} \\
			\cline{2-2}
			& \\
			\cline{2-2}
			& \\[-12pt]
			作者姓名                          & \zh@theauthor     \\
			\cline{2-2}
			学\chinesespace\chinesespace 号 & \thestudentnumber  \\
			\cline{2-2}
			授课教师                          & \zh@theadvisor     \\
			\cline{2-2}
			学\chinesespace\chinesespace 院 & \zh@theschool      \\
			\cline{2-2}
			学科专业                          & \zh@themajor       \\
			\cline{2-2}
		\end{tabular}
	\end{center}
	\setcounter{page}{-1}
	\newpage \ \thispagestyle{empty} \newpage
}

%-----------------------------------------------------------------------
% ## Page style

% Modify leftmark and right of page
\renewcommand{\chaptermark}[1]{\markboth{\chaptertitlename \quad #1}{}} % Chapter title

% Modify the pagestyle in the new chapter
\fancypagestyle{plain}{
	\fancyhf{} % Clear existing headers and footers
	\fancyhead[RO]{\centering\leftmark} % Header for odd pages (right-hand pages)
	\fancyhead[LE]{\centering\leftmark} % Header for even pages (left-hand pages)
	\fancyfoot[C]{\thepage} % Footer content aligned to the right
}

\fancypagestyle{customstyle}{
	\fancyhf{} % Clear existing headers and footers
	\fancyhead[RO]{\centering\leftmark} % Header for odd pages (right-hand pages)
	\fancyhead[LE]{\centering\leftmark} % Header for even pages (left-hand pages)
	\fancyfoot[C]{\thepage} % Footer content aligned to the right
}


%-----------------------------------------------------------------------
% ## Title format

% Redefine the chaptertitlename
\renewcommand{\chaptertitlename}{第\thechapter 章}

% Redefine chapter title format
\titleformat{\chapter}
{\normalfont\huge\bfseries\centering}
{\chaptertitlename \quad}
{0pt}
{}

% Reduce space around titles
\titlespacing{\chapter}{0pt}{0pt}{18pt}
\titlespacing{\section}{0pt}{18pt}{6pt}
\titlespacing{\subsection}{0pt}{12pt}{6pt}
\titlespacing{\subsubsection}{0pt}{12pt}{6pt}


%-----------------------------------------------------------------------
% ## Abstract and Keywords

\newenvironment{abstract_cn}
{\markboth{摘要}{摘要}
	\begin{center}
		\phantomsection
		\addcontentsline{toc}{chapter}{摘要}
		\bfseries \Large 摘要
	\end{center}
	}
	{}

\newenvironment{keywords_cn}
{\textbf{关键词：}
}
{\newpage}

\newenvironment{abstract_en}
{\markboth{Abstract}{Abstract}
	\begin{center}
		\phantomsection
		\addcontentsline{toc}{chapter}{Abstract}
		\bfseries \Large Abstract
	\end{center}}
	{}

\newenvironment{keywords_en}
{\textbf{Keywords:}}
{\newpage}


%-----------------------------------------------------------------------
% ## Table of contents

% Deepth
\setcounter{tocdepth}{1}

% Style
\titlecontents{chapter}
[0em]
{\bfseries}
{第\thecontentslabel 章 \quad}
{}
{\titlerule*[1pc]{.}\contentspage}

\titlecontents{section}
[4em]
{}
{\contentslabel{2em}}
{}
{\titlerule*[1pc]{.}\contentspage}


%-----------------------------------------------------------------------
% ## Add misc

% Discussion
\newenvironment{discussion}
{\newpage
\renewcommand{\chaptertitlename}{}
\pdfbookmark{讨论}{discussion}
\chapter*{讨\hspace{12pt}论}
\markboth{讨论}{讨论}
}
{\newpage}
% Innovation point
\newenvironment{innovation}
{\newpage
\renewcommand{\chaptertitlename}{}
\pdfbookmark{创新点}{innovation}
\chapter*{创新点}
\markboth{创新点}{创新点}
}
{\newpage}
% Conclusion
\newenvironment{conclusion}
{\newpage
\renewcommand{\chaptertitlename}{}
\pdfbookmark{结论}{conclusion}
\chapter*{结\hspace{12pt}论}
\markboth{结论}{结论}
}
{\newpage}

% Acknowledgement
\newenvironment{acknowledgement}
{\newpage
\renewcommand{\chaptertitlename}{}
\pdfbookmark{致谢}{acknowledgement}
\chapter*{致\hspace{12pt}谢}
\markboth{致谢}{致谢}
}
{\newpage}

% References
\newenvironment{references}
{\newpage
\renewcommand{\chaptertitlename}{}
\markboth{参考文献}{参考文献}
}
{\newpage}

% Appendix
\newcommand{\thesisappendix}{
	\newpage
	\appendix
	\interlinepenalty=0
	\addtocontents{toc}{\protect\setcounter{tocdepth}{1}}
	\titleformat{\chapter}[block]{\centering\fontsize{15pt}{15pt}\selectfont\strong}{附录\thechapter}{7.5pt}{}

	\renewcommand{\appendixname}{附录}


	\renewcommand{\thechapter}{\Alph{chapter}}
	\renewcommand{\thesection}{\Alph{chapter}.\arabic{section}}

	\titlecontents{chapter}
	[0em]
	{\bfseries}
	{附录\thecontentslabel \quad}
	{}
	{\titlerule*[1pc]{.}\contentspage}


	% Redefine the chaptertitlename
	\renewcommand{\chaptertitlename}{附录\thechapter }
	\markboth{附录}{附录}

% \renewcommand{\theequation}{\alph{chapter}-\arabic{equation}}
% \renewcommand{\thetable}{\alph{chapter}-\arabic{table}}
% \renewcommand{\thefigure}{\alph{chapter}-\arabic{figure}}
% \renewcommand{\thetheorem}{\alph{chapter}.\arabic{theorem}}
% \renewcommand{\theaxiom}{\alph{chapter}.\arabic{axiom}}
% \renewcommand{\thecorollary}{\alph{chapter}.\arabic{corollary}}
% \renewcommand{\thelemma}{\alph{chapter}.\arabic{lemma}}
% \renewcommand{\thedefinition}{\alph{chapter}.\arabic{definition}}
% \renewcommand{\theexample}{\alph{chapter}.\arabic{example}}
}


%-----------------------------------------------------------------------
% Misc

\pagestyle{customstyle}


%-----------------------------------------------------------------------
\endinput
