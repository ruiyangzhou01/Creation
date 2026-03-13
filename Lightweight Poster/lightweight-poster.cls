%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lightweight Poster
% LaTeX Class
% Version 1.1 (August 7, 2024)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lightweight-poster}[2024/08/07 lightweight Poster Class v1.1]

% TikZposter Documentation
% https://texdoc.org/serve/tikzposter/0

\LoadClass[25pt, a0paper, portrait]{tikzposter} % Load the base class
\tikzposterlatexaffectionproofoff

% Options:
% - font size: 12pt, 14pt, 17pt, 20pt, or 25pt;
% - paper size: a0paper, a1paper, or a2paper;
% - orientation: landscape or portrait

%=================================================
% Predefined themes: Default, Autumn, Basic, Board, Desert, Envelope, Rays, Simple, Wave
% Leave commented to use MC colors
%\usetheme{Basic}
%=================================================

%----------------------------------------------------------------------------------------
%	REQUIRED PACKAGES AND MISC CONFIGURATIONS
%----------------------------------------------------------------------------------------


\RequirePackage[fontsize=25]{fontsize} % Required for setting fonts size

\RequirePackage{graphicx} % Required for including images
\graphicspath{{images/}{figures/}{./}} % Specifies where to look for included images (trailing slash required)

\RequirePackage{float} % Allows more precisely positioning floats e.g. \begin{figure}[H]

\RequirePackage{blindtext} % Required for dummy text

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------

\geometry{
	paperwidth=84.1cm, % Set the paper width
	paperheight=118.9cm, % Set the paper height
}
\setlength{\TP@visibletextwidth}{\textwidth-2\TP@innermargin}
\setlength{\TP@visibletextheight}{\textheight-2\TP@innermargin}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\RequirePackage[T1]{fontenc}
\RequirePackage{newtxmath,newtxtext}

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------
% Defining the color palette for MC colors
% https://www.montgomerycollege.edu/_documents/offices/elite/mc-brand-style-guide.pdf

\definecolorstyle{MCColorStyle}{
	\definecolor{colorOne}{RGB}{81, 35, 127} % purple
	\definecolor{colorOneTint}{RGB}{110, 77, 148} % purple tint
	\definecolor{colorTwo}{RGB}{159, 161, 164} % medium gray
	\definecolor{colorThree}{RGB}{102, 102, 102} % dark gray
	\definecolor{colorAccentOne}{RGB}{255, 95, 58} % orange
	\definecolor{colorAccentTwo}{RGB}{14, 138, 217} % blue
	\definecolor{colorAccentThree}{RGB}{40, 166, 137} % green
}{
% Background Colors
	\colorlet{backgroundcolor}{white}
	\colorlet{framecolor}{colorOne}
	% Title Colors
	\colorlet{titlebgcolor}{colorOne}
	\colorlet{titlefgcolor}{white}
	% Block Colors
	\colorlet{blocktitlebgcolor}{colorOne}
	\colorlet{blocktitlefgcolor}{white}
	\colorlet{blockbodybgcolor}{white}
	\colorlet{blockbodyfgcolor}{black}
	% Innerblock Colors
	\colorlet{innerblocktitlebgcolor}{colorOneTint}
	\colorlet{innerblocktitlefgcolor}{white}
	\colorlet{innerblockbodybgcolor}{white}
	\colorlet{innerblockbodyfgcolor}{black}
	% Note colors
	\colorlet{notebgcolor}{white}
	\colorlet{notefgcolor}{black}
	\colorlet{noteframecolor}{colorAccentOne}
}

%================================================
\usecolorstyle{MCColorStyle}
%================================================

%----------------------------------------------------------------------------------------
%	TABLES AND FIGURES
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%	CAPTIONS
%----------------------------------------------------------------------------------------

\RequirePackage{caption} % Required for customizing captions

%----------------------------------------------------------------------------------------
%	LISTS
%----------------------------------------------------------------------------------------

\RequirePackage{enumitem} % Required for list customization
\renewcommand{\labelitemi}{\textcolor{colorOneTint}{\textbullet}} % Customize the first level bullet point character
\renewcommand{\labelenumi}{\textcolor{colorOneTint}{\arabic{enumi}.}} % Customize the first level numbered list characters

%----------------------------------------------------------------------------------------
%	MATH
%----------------------------------------------------------------------------------------

\RequirePackage{amsmath} % Required for math environments

% \RequirePackage{mathtools} % Required for mathematical typesetting (conflicts)

\RequirePackage{braket} % Required for Dirac notation
\newcommand{\projector}[1]{\ket{#1}\bra{#1}} % Command for projecting onto a state

\RequirePackage{siunitx} % Required for typesetting physical units
\sisetup{
	group-digits=integer,
	group-minimum-digits=4,
	text-series-to-math = true,
	propagate-math-font = true,
	group-separator = {,},
}

%----------------------------------------------------------------------------------------
%	LINKS
%----------------------------------------------------------------------------------------

\RequirePackage{hyperref} % Required for links

\hypersetup{
	colorlinks=false, % Whether to color the text of links
	urlcolor=colorAccentTwo, % Color for \url and \href links
	linkcolor=colorAccentTwo, % Color for \nameref links
	citecolor=colorAccentTwo, % Color of reference citations
	hidelinks, % Hide the default boxes around links
}

%----------------------------------------------------------------------------------------
%	COLUMNS
%----------------------------------------------------------------------------------------

\RequirePackage{multicol} % Required for outputting content in multiple columns on demand
\raggedcolumns % Don't stretch column content vertically so bottoms of columns align

%----------------------------------------------------------------------------------------
%	TITLE SECTION
%----------------------------------------------------------------------------------------

\settitle{%
	\centering
	\color{titlefgcolor} % Color
	\begin{minipage}[c]{0.75\linewidth}
		\begingroup
		\parbox[t]{\linewidth}{\bfseries \Huge \postertitle} \vspace{0.75em}

		\parbox[t]{\linewidth}{\bfseries \huge \posterauthors} \vspace{0.75em}

		% \parbox[t]{\linewidth}{\bfseries \Large \emails} \vspace{0.75em}

		\parbox[t]{\linewidth}{\large \affiliations}
		\endgroup
	\end{minipage} % no space if you would like to put them side by side
	\hspace{0.02\linewidth}
	\begin{minipage}[c]{0.2\linewidth}
		\begin{multicols}{2}
			\begin{minipage}[b]{1\linewidth}
				\centering
				\includegraphics[height=0.6\linewidth]{logo}
			\end{minipage}
			\vspace{1em}

			\begin{minipage}[b]{1\linewidth}
				\centering
				\includegraphics[width=0.6\linewidth, height=0.6\linewidth]{logo}
				\captionof*{figure}{%
					\color{titlefgcolor} % Color
					Find it interesting?
				}
			\end{minipage}

			\columnbreak

			\begin{minipage}[b]{1\linewidth}
				\centering
				\includegraphics[height=0.6\linewidth]{logo}
			\end{minipage}
			\vspace{1em}

			\begin{minipage}[b]{1\linewidth}
				\centering
				\includegraphics[width=0.6\linewidth, height=0.6\linewidth]{logo}
				\captionof*{figure}{%
					\color{titlefgcolor} % Color
					About our group
				}
			\end{minipage}
		\end{multicols}
	\end{minipage}
}

%----------------------------------------------------------------------------------------
%	BLOCKS
%----------------------------------------------------------------------------------------

% Command to output the title of the block
\newcommand{\subblock}[2]{%
	\vspace{0.25em}
	\coloredbox[width=0.98\linewidth, bgcolor=notebgcolor, fgcolor=notefgcolor, framecolor=innerblocktitlebgcolor]{%
		\vspace{0.25em} \centering \bfseries \large #1 \vspace{0.25em}
	}%
	#2
}

\RequirePackage{zref-savepos} % Required for saving positions

% Command to output the current position
\newcommand*{\currpos}[1]{%
	\zsavepos{#1}%
	(\the\dimexpr\zposx{#1}sp\relax, \the\dimexpr\zposy{#1}sp\relax)%
}

% Command to fill the block to the bottom of the column
\newcommand{\blockfill}[1]{%
	\zsavepos{#1}% Save the current position
	\vspace{\the\dimexpr\zposy{#1}sp-2em}
}

%----------------------------------------------------------------------------------------
%	TITLE & AUTHORS
%----------------------------------------------------------------------------------------

\newcommand{\postertitle}[1]{\renewcommand{\postertitle}{#1}} % Command to set the title of the poster
\newcommand{\posterauthors}[1]{\renewcommand{\posterauthors}{#1}} % Command to set the authors of the poster

\newcommand{\cor}{\textsuperscript{\textdagger}} % Command to add a dagger symbol to indicate the corresponding author

%----------------------------------------------------------------------------------------
%	EMAILS
%----------------------------------------------------------------------------------------

\newcommand{\emails}[1]{\renewcommand{\emails}{#1}} % Command to output all the emails
\newcommand{\email}[1]{#1} % Command to output the email
\newcommand{\emailentry}[3]{#2: #3} % Command to set the email entry
\newcommand{\ead}[1]{\href{mailto:#1}{#1}} % Command to set the email address

%----------------------------------------------------------------------------------------
%	AFFILIATIONS
%----------------------------------------------------------------------------------------

\newcommand{\affiliations}[1]{\renewcommand{\affiliations}{#1}} % Command to output all the affiliation numbers
\newcommand{\affiliation}[1]{\textsuperscript{#1}} % Command to output the affiliation number
\newcommand{\affiliationentry}[2]{\textsuperscript{#1} #2} % Command to set the affiliation number and institution