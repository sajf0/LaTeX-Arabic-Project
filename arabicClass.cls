\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{arabicClass}[2024/9/20 Example LaTeX class]

\LoadClass[14pt, a4paper]{extreport}

\RequirePackage{geometry, graphicx}

\RequirePackage{titletoc, titlesec}

\RequirePackage{fancyhdr}

\RequirePackage{amsmath, amssymb, amsthm}

\RequirePackage{polyglossia}

\RequirePackage{biblatex} 
\DeclareFieldFormat[book]{title}{#1}

\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
\fancyhead[L]{\thepage}
\fancyhead[C]{\small \leftmark}
\fancyhead[R]{\small \thechapter}
\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{#1}}{}}

\setmainlanguage[numerals=maghrib]{arabic}
\setotherlanguage{english}

\newfontfamily{\arabicfont}[Script=Arabic]{Times New Roman}

\usepackage[T1]{fontenc}
\usepackage{times}

\newcommand{\ar}{\textarabic}
\newcommand{\en}{\textenglish}

\usepackage[lite, subscriptcorrection, zswash]{mtpro2}

\makeatletter
\def\@makechapterhead#1{%
	\begin{center}
		\vspace*{190pt}
		\Huge\bfseries
		\fbox{\parbox{1\textwidth}{\centering \thechapter\\[25pt]#1}} 
		\vspace{20pt}
	\end{center}
	\thispagestyle{empty}   % No page number
	\addtocounter{page}{-1} % Adjust page number
	\cleardoublepage         % Start on a new page
	\newpage
}

\def\@makeschapterhead#1{%
	\vspace*{1cm}
	{\centering\Large\bfseries #1\par}
	\vspace{1cm}	
}
\makeatother

\titleformat{\section}[block]
{\bfseries\fontsize{14}{17}\selectfont} 
{\thesection}{1em}{}  

\titleformat{\subsection}[block]
{\bfseries\fontsize{14}{17}\selectfont} 
{\thesubsection}{1em}{}  

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

\titlecontents{chapter}[0em]{\bfseries\vspace{15pt}}{\thecontentslabel: }{}{\hfill}

\titlecontents{chapter*}[0em]{\bfseries\vspace{15pt}}{}{}{\hfill\normalfont{\contentspage}}

\titlecontents{section}[1em]
{\normalfont}
{\thecontentslabel\hspace*{5pt} }
{}{\titlerule*[0.5pc]{.}\contentspage}

\titlecontents{subsection}[1em]
{\normalfont}
{\thecontentslabel\hspace*{5pt} }
{}{\titlerule*[0.5pc]{.}\contentspage}

\renewcommand{\thetable}{\arabic{chapter} - \arabic{table}}

\renewcommand{\thefigure}{\arabic{chapter} - \arabic{figure}}


\newtheoremstyle{theoremstyle}
{\topsep}
{\topsep}
{\normalfont}
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

\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\LL}{\mathcal{L}}

% Define new math operators
\DeclareMathOperator{\Log}{Log}
\DeclareMathOperator{\lcm}{lcm}
\DeclareMathOperator{\arcsec}{arcsin}
\DeclareMathOperator{\arccsc}{arccsc}
\DeclareMathOperator{\arccot}{arccot}

\renewcommand{\mathbf}[1]{\textbf{\en{#1}}}

\endinput














