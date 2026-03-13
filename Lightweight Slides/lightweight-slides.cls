\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lightweight-slides}
% \PassOptionsToPackage{subsection=false}{beamerouterthememiniframes}

\LoadClass[aspectratio=169,11pt]{beamer}
\usetheme{Berlin}
\usecolortheme{rose}
\usecolortheme{beaver}

\useoutertheme{miniframes} % Alternatively: miniframes, infolines, split
\useinnertheme{circles}
\usecolortheme{rose}

\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{caption}[numbered]
\setbeamertemplate{items}[ball]
\setbeamertemplate{subsection in toc}[ball unnumbered]
\setbeamertemplate{blocks}[rounded][shadow=true]
\setbeamertemplate{page number in head/foot}[totalframenumber]
\setbeamertemplate{theorems}[numbered]
\renewcommand\thetheorem{\arabic{section}.\arabic{theorem}}
\newtheorem*{conclusion*}{Conclusion}{}


\makeatletter
\let\beamer@writeslidentry@miniframeson=\beamer@writeslidentry%
\def\beamer@writeslidentry@miniframesoff{%
	\expandafter\beamer@ifempty\expandafter{\beamer@framestartpage}{}% does not happen normally
	{%else
	% removed \addtocontents commands
		\clearpage\beamer@notesactions%
	}
}
\newcommand*{\miniframeson}{\let\beamer@writeslidentry=\beamer@writeslidentry@miniframeson}
\newcommand*{\miniframesoff}{\let\beamer@writeslidentry=\beamer@writeslidentry@miniframesoff}
\makeatother

% reduce frametitle fontsize
\setbeamerfont{frametitle}{size=\normalsize}
% resize frametitle box
\setbeamertemplate{frametitle}{%
	\nointerlineskip%
	\begin{beamercolorbox}[wd=\paperwidth,ht=2.5ex,dp=0.8ex]{frametitle}
		\hspace*{1ex} \insertframetitle%
	\end{beamercolorbox}%
}
% remove headline
\setbeamertemplate{headline}{}


%-----------------------------------------------------------------------
% Font

% Check for pdfLaTeX
\ifpdftex
\RequirePackage[T1]{fontenc}
\RequirePackage{newtxmath,newtxtext}
\fi

% Check for XeTeX
\ifxetex
\RequirePackage[UTF8]{ctex}
\renewcommand{\figurename}{Fig}
\renewcommand{\tablename}{Table}

% 中文字体
\RequirePackage{xeCJK}
\setCJKmainfont{SimSun}[BoldFont=SimHei] % Main font
\setCJKsansfont{Microsoft YaHei} % Sans-serif font
\setCJKmonofont{FangSong} % Monospaced font

% 西文字体
\RequirePackage{fontspec}
\setromanfont{Times New Roman} % Main font
\setsansfont{Arial} % Sans-serif font
\setmonofont[Color={0019D4}]{Courier New} % Monospaced font

% Math font
\RequirePackage{unicode-math}
\setmathfont{TeX Gyre Termes Math}
\fi


%-----------------------------------------------------------------------
% For place blindtext
\RequirePackage{blindtext}

% Math symbols
\RequirePackage{blkarray}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{siunitx}
\sisetup{
	group-digits=integer,
	group-minimum-digits=4,
	text-series-to-math = true,
	propagate-math-font = true,
	group-separator = {,},
}
\RequirePackage{braket}
\RequirePackage{mathtools}

% Figures and Tables
\RequirePackage{graphicx}
\graphicspath{{pictures/}{images/}{figures/}{./}}
\RequirePackage{caption}
\RequirePackage[
	font={bf},labelformat=parens,labelsep=space,skip=0pt,list=0,hypcap=0,
	justification=raggedright,singlelinecheck=false,
]{subcaption}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\RequirePackage{threeparttable}

% TikZ
\RequirePackage{tikz}
\usetikzlibrary{mindmap,shadows,trees}
\RequirePackage{adjustbox}
\RequirePackage{color}

% Load a tikzpicture from a file
\newcommand{\includetikz}[3][]{%
% Arguments:
% #1: Alignment option (center, right, or left)
% #2: Path to the TikZ file
% #3: Optional dimensions (e.g., height=5cm, width=4cm)
	\ifthenelse{\equal{#1}{center}}{%
		\centering
		\begin{adjustbox}{#3,keepaspectratio,valign=t}
		\input{tikz/#2.tikz}
		\end{adjustbox}
	}{%
		\ifthenelse{\equal{#1}{right}}{%
			\begin{flushright} % Flushright environment
			\begin{adjustbox}{#3,keepaspectratio,valign=t}
			\input{tikz/#2.tikz}
			\end{adjustbox}
			\end{flushright}
		}{%
			\ifthenelse{\equal{#1}{left}}{%
				\begin{flushleft} % Flushleft environment
				\begin{adjustbox}{#3,keepaspectratio,valign=t}
				\input{tikz/#2.tikz}
				\end{adjustbox}
				\end{flushleft}
			}{%
			% Default case: No alignment specified
				\begin{adjustbox}{#3,keepaspectratio,valign=t}
				\input{tikz/#2.tikz}
				\end{adjustbox}
			}%
		}%
	}%
}


% Code
\RequirePackage{algorithm2e}
\RequirePackage{listings}
\lstset{
	tabsize=4, % Converts tabs to 4 spaces
	basicstyle=\ttfamily\small,  % Set the basic font style
	keywordstyle=\color{blue},   % Set keyword colors
	stringstyle=\color{red},     % Set string literal colors
	commentstyle=\color{green},  % Set comment colors
	numbers=left,                % Line numbers on the left
	frame=single,                % Frame around the code
	breaklines=true              % Break long lines automatically
}

% References
\RequirePackage{bibentry}
\RequirePackage[square,numbers,super,sort&compress]{natbib}

\RequirePackage{pgffor}
\newcommand{\footnotecite}[1]{%
	\begingroup%
	\cite{#1}%
	\renewcommand\thefootnote{}%
	\renewcommand\newblock{}%
	\foreach \x in {#1} {%
		\footnote{\tiny\cite{\x} \bibentry{\x}}%
		\addtocounter{footnote}{-1}%
	}%
	\endgroup%
}

% Misc
\RequirePackage{hyperref}
\pdfstringdefDisableCommands{%
	\def\\{ }%
}


% Custom commands: inline title
\NewDocumentCommand{\inlinetitle}{+m}{%
% #1 = title text
	\textcolor{frametitle.fg}{#1}
}


% Custom commands: columns with figure and text
\NewDocumentCommand{\FigWithText}{m m +m}{%
% #1 = fraction for image column (e.g. 0.6 or 1)
% #2 = graphics file
% #3 = (long) text
	\ifdim
		#1 pt>0.7499 pt %<── case 1: full-width figure
		\begin{figure}
			\centering
			\includegraphics[width=#1\linewidth]{#2}
			#3
		\end{figure}
	\else%
		\begin{figure}
			\centering
			\begin{columns}[c]
				\begin{column}{#1\textwidth}
					\centering
					\includegraphics[width=\linewidth]{#2}
				\end{column}
				\begin{column}{\dimexpr\textwidth-#1\textwidth\relax}
					#3
				\end{column}
			\end{columns}
		\end{figure}
	\fi%
}


%-----------------------------------------------------------------------
% create "+" rule type for thick vertical lines
\newcolumntype{+}{!{\vrule width 2pt}}

% create \thickcline for thick horizontal lines of variable length
\newlength\savedwidth
\newcommand\thickcline[1]{%
	\noalign{\global\savedwidth\arrayrulewidth\global\arrayrulewidth 2pt}%
	\cline{#1}%
	\noalign{\vskip\arrayrulewidth}%
	\noalign{\global\arrayrulewidth\savedwidth}%
}

% \thickhline command for thick horizontal lines that span the table
\newcommand\thickhline{\noalign{\global\savedwidth\arrayrulewidth\global\arrayrulewidth 2pt}%
\hline
\noalign{\global\arrayrulewidth\savedwidth}}

%-----------------------------------------------------------------------
\endinput