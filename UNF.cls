\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UNF}[UNF Brevpapir, Oktober 2015]

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{lastpage}

\LoadClass[11pt,a4paper]{scrartcl}
\RequirePackage{microtype}

\renewcommand*\familydefault{\sfdefault}

\definecolor{light-gray}{gray}{0.80}

\newcommand{\organization}{UNF Danmark}
\newcommand{\address}{c/o H.C. Ørsted Institutet \\ Universitetsparken 5 \\ 2100 København Ø}
\newcommand{\webpage}{www.unf.dk}

\DeclareOption{aarhus}{
  \renewcommand{\organization}{UNF Aarhus}
  \renewcommand{\address}{c/o UNF Aarhus \\ Ny Munkegade 120 \\ 8000 Aarhus C}
  \renewcommand{\webpage}{www.aarhus.unf.dk}
}

\DeclareOption{aalborg}{
  \renewcommand{\organization}{UNF Aalborg}
  \renewcommand{\address}{c/o UNF Aalborg \\ Fr. Bajers Vej 7 \\ 9220 Aalborg Øst}
  \renewcommand{\webpage}{www.aalborg.unf.dk}
}

\DeclareOption{kbh}{
  \renewcommand{\organization}{UNF København}
  \newcommand{\address}{c/o H.C. Ørsted Institutet \\ Universitetsparken 5 \\ 2100 København Ø}
  \renewcommand{\webpage}{www.kbh.unf.dk}
}

\DeclareOption{lyngby}{
  \renewcommand{\organization}{UNF Lyngby}
  \renewcommand{\address}{c/o UNF Lyngby \\ Dtu Bygning 303A \\ Asmussens Allé \\ 2800 Kongens Lyngby }
  \renewcommand{\webpage}{www.lyngby.unf.dk}
}

\DeclareOption{odense}{
  \renewcommand{\organization}{UNF Odense}
  \renewcommand{\address}{c/o Postafdelingen \\ Campusvej 55 \\ 5230 Odense M}
  \renewcommand{\webpage}{www.odense.unf.dk}
}

\DeclareOption{danmark}{
  \renewcommand{\organization}{UNF Danmark}
  \renewcommand{\address}{c/o H.C. Ørsted Institutet \\ Universitetsparken 5 \\ 2100 København Ø}
  \renewcommand{\webpage}{www.unf.dk}
}

\ProcessOptions\relax

\parindent  = 0pt
\parskip    = 2.12mm
\footskip   = 32mm

\usepackage[
  a4paper,
  top             = 50mm,
  bottom          = 50mm,
  left            = 30mm,
  right           = 50mm,
  marginparwidth  = 30mm,
  head            = 0mm,
  headheight      = 0mm,
  headsep         = 42mm]{geometry}

\linespread{1.1}

\renewcommand{\section}{\@ifstar\@section\@@section}

\newcommand\@section{\scr@startsection{section}
                                    {1}
                                    {\z@}
                                    {-4.23mm \@plus -1ex \@minus -.2ex}
                                    {2.12mm \@plus.2ex}
                                    {\fontsize{13pt}{0mm}\sffamily\bfseries}}

\newcommand\@@section{\scr@startsection{section}
                                    {1}
                                    {\z@}
                                    {-4.23mm \@plus -1ex \@minus -.2ex}
                                    {2.12mm \@plus.2ex}
                                    {\fontsize{13pt}{0mm}\sffamily\bfseries}*}

\renewcommand{\subsection}{\@ifstar\@subsection\@@subsection}

\newcommand\@subsection{\scr@startsection{subsection}
                                    {2}
                                    {\z@}
                                    {-2.12mm \@plus -1ex \@minus -.2ex}
                                    {0.1mm \@plus.2ex\vspace{-2.632mm}}
                                    {\normalfont\bfseries}}

\newcommand\@@subsection{\scr@startsection{subsection}
                                    {2}
                                    {\z@}
                                    {-2.12mm \@plus -1ex \@minus -.2ex}
                                    {0.1mm \@plus.2ex\vspace{-2.632mm}}
                                    {\normalfont\bfseries}*}

\renewcommand\maketitle{
  \vspace{-10pt}
  {\fontsize{15pt}{0mm}\sffamily\bfseries\@title \\}
  {\fontsize{9pt}{0mm}\itshape
    \ifx {\@subtitle} \undefined
        \@subtitle
    \else
        Udarbejdet af \@author, \@date
    \fi
    \vspace{3.8mm}
  }
}

\def\@head{
  \hspace{\textwidth}\hspace{3mm}\parbox{40mm}{\color{gray}{
    \includegraphics[width=40mm]{../logo}\vspace{10mm}
    {\fontsize{10pt}{0mm}\normalfont
      \organization \vspace{10pt}

      \address \vspace{10pt}
      
      \webpage \vspace{10mm}
      
      Side \thepage\ af \pageref{LastPage}
    }
  }}
}

\def\@foot{
  \setlength{\unitlength}{1mm}
  \thicklines
  \begin{picture}(220,20)
    \put(-32,0){\color{light-gray}\line(1,0){195}}
    \put(163,0){\color{light-gray}\line(0,1){7}}
    \put(163,7){\color{light-gray}\line(-1,0){30}}
    \put(133,7){\color{light-gray}\line(0,-1){30}}
    \put(53,-7){\color{light-gray}\line(1,0){150}}
    \put(135,2){\bfseries Danmark}
    \put(53,-5){\bfseries Ungdommens Naturvidenskabelige Forening}
    \put(135,-11){\bfseries www.unf.dk}
  \end{picture}
}

\def\ps@unf{\ps@empty
  \def\@oddhead{\@head}
  \def\@evenhead{\@head}
  \def\@oddfoot{\@foot}
  \def\@evenfoot{\@foot}
}

\pagestyle{unf}