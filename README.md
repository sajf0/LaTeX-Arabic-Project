# The Goal of This Project
This project aims to make template for Arabic documents. I hope there are people that are interested and can help me in this project

## Current Issues 

###  Subsection Numbering Does Not Work
I don't know why but maybe because the way that I defined subchapter in `arabicClass.cls`:
```latex
\titleclass{\subchapter}{top}[\chapter]
\newcounter{subchapter}

\titleformat{\subchapter}[display]{\Large\bfseries\centering}{\thechapter}{0pt}{\Large\bfseries\centering}

\titlespacing*{\subchapter}{0pt}{0pt}{20pt}
```
And I inserted this piece of code from stackchange or ChatGPT I don't remember well, and this make the contents heading lives in the new chapter environment  
```latex
%%%%
\renewcommand{\tableofcontents}{%
	\begingroup
	\let\clearpage\relax
	\subchapter*{المحتويات}
	\@starttoc{toc}
	\endgroup
}
```
