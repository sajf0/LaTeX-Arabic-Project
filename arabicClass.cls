\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{arabicClass}[2024/9/20 Example LaTeX class]

\LoadClass[14pt, a4paper]{extreport}

\RequirePackage{geometry, graphicx}

\RequirePackage{titlesec, titletoc}

\RequirePackage{amsmath, amssymb, amsthm}

\RequirePackage{polyglossia}

\RequirePackage{biblatex} 

\setmainlanguage{arabic}
\setotherlanguage{english}

\newfontfamily{\arabicfont}[Script=Arabic]{Amiri}

\newcommand{\ar}{\textarabic}
\newcommand{\en}{\textenglish}


\titleformat{\chapter}[display]{\Huge\bfseries\centering}{\thechapter}{40pt}{\Huge\bfseries\centering}

\titlespacing*{\chapter}{0pt}{150pt}{150pt}

\titleclass{\subchapter}{top}[\chapter]
\newcounter{subchapter}

\titleformat{\subchapter}[display]{\Large\bfseries\centering}{\thechapter}{0pt}{\Large\bfseries\centering}

\titlespacing*{\subchapter}{0pt}{0pt}{20pt}

\renewcommand{\thechapter}  {\ifnum\value{chapter}=1 الفصل الأول
	\else
	\ifnum\value{chapter}=2 الفصل الثاني
	\else
	\ifnum\value{chapter}=3 الفصل الثالث
	\else
	\ifnum\value{chapter}=4 الفصل الرابع
	\else
	\ifnum\value{chapter}=5 الفصل الخامس
	\else
	\ifnum\value{chapter}=6 الفصل السادس
	\else
	\ifnum\value{chapter}=7 الفصل السابع
	\else
	\Numberstring{chapter}
	\fi
	\fi
	\fi
	\fi
	\fi
	\fi
	\fi}
	
\renewcommand{\thesection}{\arabic{chapter} - \arabic{section}}

\renewcommand{\thesubsection}{\arabic{chapter} - \arabic{section} - \arabic{subsection}}

\renewcommand{\tableofcontents}{%
	\begingroup
	\let\clearpage\relax
	\subchapter*{المحتويات}
	\@starttoc{toc}
	\endgroup
}

\titlecontents{chapter}[0em]{\bfseries\vspace{15pt}}{\thecontentslabel: }{}{\hfill}

\titlecontents{chapter*}[0em]{\bfseries\vspace{15pt}}{}{}{\hfill\normalfont{\contentspage}}

\titlecontents{section}[1em]
{\normalfont}
{\thecontentslabel\hspace*{5pt} }
{}{\titlerule*[0.5pc]{.}\contentspage}

\renewcommand{\thetable}{\arabic{chapter} - \arabic{table}}

\renewcommand{\thefigure}{\arabic{chapter} - \arabic{figure}}


\newtheoremstyle{theoremstyle}
{\topsep}
{\topsep}
{\itshape}
{}
{\bfseries}
{\vspace{5pt}\\}
{.5ex}  
{#1 #2 \textbf{#3}}

\theoremstyle{theoremstyle}

\newtheorem{theorem}{مبرهنة}[section]

\newtheoremstyle{mystyle}
{\topsep}
{\topsep}
{}
{}
{\bfseries}
{\vspace{5pt}\\}
{.5ex}  
{#1 #2 \textbf{#3}}

\theoremstyle{mystyle}



\newtheorem{definition}[theorem]{تعريف}
\newtheorem{example}[theorem]{مثال}
\newtheorem{corollary}[theorem]{نتيجة}

\renewcommand{\thetheorem}{\arabic{chapter} - \arabic{section} - \arabic{theorem}}

\newenvironment{myproof}{\noindent\textbf{البرهان}\vspace{5pt}\\ \noindent}{\hfill \(\qedsymbol\)}

\newenvironment{solution}{\noindent\textbf{الحل}\vspace{5pt}\\}{}

\renewcommand*\newunitpunct{\addcomma\space}
\makeatletter
\def\abx@comma{\ifdim\lastkern>\z@\unkern\fi\abx@puncthook{،}}

\endinput














