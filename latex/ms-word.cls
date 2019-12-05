\ProvidesClass{ms-word}[2019/12/04]
\LoadClass[12pt]{article}

\RequirePackage{etoolbox}

\RequirePackage{xcolor}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{titlesec}
\RequirePackage[kerning=false,protrusion=false,final]{microtype}
\RequirePackage{tikz}
\usetikzlibrary{fadings,decorations.text}
\RequirePackage{newtxtext,newtxmath} % Times
\RequirePackage{helvet} % since arial is a helvetica clone
\renewcommand{\familydefault}{\sfdefault}

\renewcommand{\baselinestretch}{1.5}
\setlength{\parskip}{\baselineskip}%
\setlength{\parindent}{0pt}%

\RequirePackage[document]{ragged2e}

\newcommand{\winarty}{
\begin{tikzpicture}
\draw [xshift=2.5pt,yshift=-2pt,decorate, decoration={text along path,text format delimiters={[}{]},text align=fit to path,
text={[\fontsize{20}{20}\bfseries\color{1}\selectfont]1[]}},]
(1,0) .. controls (1,0.75) and (1,-0.75) .. (1,0.5);

\path [decorate, decoration={text along path,text format delimiters={[}{]},text align=fit to path,
text={[\fontsize{20}{20}\bfseries\color{1}\selectfont]1[]}},]
(1,0) .. controls (1,0.75) and (1,-0.75) .. (1,0.5);
\end{tikzpicture}
}

\definecolor{msblue}{rgb}{0,0.3,0.6}
\definecolor{mscyan}{rgb}{0,0.4,0.8}

\titleformat{\section}
{\large\bfseries\color{msblue}}{}{-0.2em}{}
\titleformat{\subsection}
  {\color{mscyan}}{}{-0.2em}{}

\titlespacing*{\section}
{0pt}{1.5ex}{-0.4ex}
\titlespacing*{\subsection}
{0pt}{1.5ex}{-0.4ex}

\hyphenpenalty10
\exhyphenpenalty10

\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\arabic{subsection}}
\renewcommand{\thesubsubsection}{\roman{subsubsection})}

\RequirePackage{fancyhdr}
\fancypagestyle{plain}{}
\fancyhead[RO]{\bfseries dank}
\fancyhead[LO]{\bfseries title}
\fancyfoot[CO]{\bfseries \thepage}
\AtEndOfPreamble{\author{HappY!}}

\renewcommand{\headrule}{}
\sloppy
\endinput
