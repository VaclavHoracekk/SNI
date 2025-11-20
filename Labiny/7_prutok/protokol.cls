% Ing. Tomáš Sýkora, 3/2022, v0.3
% Protokol do laboratorních cvičení
% https://nasa.github.io/nasa-latex-docs/html/index.html

\LoadClass[a4paper,onecolumn,12pt]{article}
\usepackage[czech]{babel}
%\usepackage{czech}
\usepackage[utf8]{inputenc}
%\usepackage[T1]{fontenc}
\usepackage{calc}
%\usepackage{layout}
\usepackage{graphicx}   
\usepackage[a4paper, width=150mm, top=25mm, bottom=25mm]{geometry}
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{graphicx}
\usepackage{wrapfig}
\usepackage{mathabx}
\usepackage{multirow}
\usepackage[onehalfspacing]{setspace}
\usepackage[ddmmyyyy]{datetime}
\usepackage{textpos}
\usepackage{fancyhdr}
\usepackage{xcolor}
\usepackage{float}
\usepackage{hyperref} % Křížové a hypertextové odkazy
\usepackage{epstopdf} % Převádí soubor EPS na „zapouzdřený“ soubor PDF (Ghostscript v6.51 a novější)
\usepackage{icomma}   % Inteligentní čárka, která poskytuje správné mezery v desetinných číslech
\usepackage{comment}  % Hromadné zakomentování
\usepackage{cmap} 	  % PDF vytvořené `pdflatexem' je plně "prohledávatelné" a "kopírovatelné"
\usepackage{blindtext} % \Blinddocument
\usepackage{bm}
\usepackage{tocloft}
\fancyhf{}                  % Záhlaví, zápatí
\hypersetup{hidelinks}      % Odstranění barevného orámování odkazů
%\hyphenpenalty=10000       % Zákaz rozdělování slov na koncích řádků
\setcounter{secnumdepth}{-1}    % Nastavení počítadla stránek

\pagestyle{fancy} % empty, plain
\setlength{\headheight}{15pt}                       % Výška záhlaví
\lhead{\Vutsub\textbf{\textcolor{gray}{\@autor\ (\@autorID) a \@autorr\ (\@autorrID)}}}          
        % Záhlaví vlevo
\rhead{\Vutsub\textbf{\textcolor{gray}{\@nazev}}}   % Záhlaví vpravo
\lfoot{}                                            % Zápatí vlevo
\rfoot{}                                            % Zápatí vpravo
\renewcommand{\headrulewidth}{0pt}                  % Čára záhlaví
\cfoot{\thepage}                                    % Zápatí uprostřed - Číslování stránek

\hfuzz = 1pt
\tolerance = 1000
\widowpenalty = 10000
\clubpenalty = 8000

%=================================================================
\def\@jmeno{}
\def\@id{}
\def\@login{}
\def\@rocnik{}
\def\@obor{}
\def\@skupina{}
\def\@spolupracoval{}
\def\@ucitel{}
\def\@merenodne{}
\def\@odevzdanodne{}
\def\@priprava{}
\def\@nazev{}
\def\@cislo{}
\def\@predmet{}
\def\@ustav{}
\def\@skola{}
\def\@teplota{}
\def\@tlak{}
\def\@vlhkost{}
\def\@podminky{}

\def\jmeno #1{\def\@jmeno{#1}}
\def\id #1{\def\@id{#1}}
\def\login #1{\def\@login{#1}}
\def\rocnik #1{\def\@rocnik{#1}}
\def\obor #1{\def\@obor{#1}}
\def\labskup #1{\def\@labskup{#1}}
\def\spolupracoval #1{\def\@spolupracoval{#1}}
\def\ucitel #1{\def\@ucitel{#1}}
\def\merenodne #1{\def\@merenodne{#1}}
\def\odevzdanodne #1{\def\@odevzdanodne{#1}}
\def\priprava #1{\def\@priprava{#1}}
\def\nazev #1{\def\@nazev{#1}}
\def\cislo #1{\def\@cislo{#1}}
\def\predmet #1{\def\@predmet{#1}}
\def\ustav #1{\def\@ustav{#1}}
\def\skola #1{\def\@skola{#1}}
\def\myjobname #1{Myfilename}

\def\autor #1{\def\@autor{#1}}
\def\autorr #1{\def\@autorr{#1}}
\def\autorID #1{\def\@autorID{#1}}
\def\autorrID #1{\def\@autorrID{#1}}

\def\podminky #1{\def\@podminky{#1}}
\def\teplota #1{\def\@teplota{#1}}
\def\tlak #1{\def\@tlak{#1}}
\def\vlhkost #1{\def\@vlhkost{#1}}
%=================================================================
% Sazba titulní stránky
\renewcommand{\maketitle}{
    \thispagestyle{empty}
    
    \begin{figure}[!ht]   
        \includegraphics[scale=0.69]{UAMT_color_CMYK_CZ.pdf}  % Logo ústavu
    \end{figure}
      
    \begin{center}
        \vspace{0.01\textheight}
        {\Vutmid\textbf{LABORATORNÍ ÚLOHA}}\\
        \vspace{0.24\textheight}
        {\Vutbig\textbf{\@nazev}}                    % Název laboratorní úlohy
        \vspace{0.25\textheight}
    \end{center} 
       
    \begin{tabbing}
        \Large\textbf{Jméno a příjmení:}    \qquad\quad  	\= Hodnoty. \kill
        
        \Vutsmall\textbf{AUTOR 1:}	            \> \Vutsmall\textbf{\@autor\ (\@autorID)}\\
        \\
        \Vutsmall\textbf{AUTOR 2:}              \> \Vutsmall\textbf{\@autorr\ (\@autorrID)}\\
        \\
        \Vutsmall\textbf{ROČNÍK:}               \> \Vutsmall\textbf{\@rocnik}\\
        \\
        \Vutsmall\textbf{PŘEDMĚT:}	            \> \Vutsmall\textbf{\@predmet}\\
        \\
        \Vutsmall\textbf{DATUM:}	            \> \Vutsmall\textbf{\@merenodne}\\
        \\
        \Vutsmall\textbf{MĚŘÍCÍ PODMÍNKY:}	    \> \Vutsmall\textbf{$\bm{T}$ = \@teplota \text{ } $^{\bm{\circ}}$C, $\bm{p}$ = \@tlak \text{ } hPa, $\bm{\phi}$ = \@vlhkost \text{ } $\bm{\%}$}\\

        %\textbf{Autor:}		                \> \Large\textbf{\@jmeno} \\                                                              %\> \Large\textbf{\@spolupracoval} \\
    \end{tabbing}

    \hypersetup{% Nastavení údajů PDF dokumentu
    	pdftitle={\@nazev},             % Pole 'Document Title'
    	pdfauthor={\@autor a \@autorr},  % Pole 'Author'
    	pdfsubject={\@predmet}          % Pole 'Subject'
    	%pdfkeywords={Klíčová slova}    % Pole 'Keywords'
    }
}
%=================================================================
\newcommand\Vutbig[1]{\fontsize{30pt}{28pt}\usefont{T1}{Vafle}{m}{n} #1 } 
\newcommand\VutLar[1]{\fontsize{20pt}{24pt}\usefont{T1}{Vafle}{m}{n} #1 } 
\newcommand\Vutlar[1]{\fontsize{18pt}{22pt}\usefont{T1}{Vafle}{m}{n} #1 } 
\newcommand\Vutmid[1]{\fontsize{16pt}{20pt}\usefont{T1}{Vafle}{m}{n} #1 } 
\newcommand\Vutsmall[1]{\fontsize{13pt}{16pt}\usefont{T1}{Vafle}{m}{n} #1 }
\newcommand\Vutsub[1]{\fontsize{11pt}{13pt}\usefont{T1}{Vafle}{m}{n} #1 }

\tocloftpagestyle{empty}

\renewcommand{\cfttoctitlefont}{\fontsize{16pt}{20pt}\usefont{T1}{Vafle}{m}{n}\MakeUppercase}
\renewcommand{\cftsecfont}{\fontsize{13pt}{16pt}\usefont{T1}{Vafle}{m}{n}}
\renewcommand{\cftsubsecfont}{\fontsize{11pt}{11pt}\usefont{T1}{Vafle}{m}{n}}

\renewcommand{\cftsecpagefont}{\fontsize{13pt}{16pt}\usefont{T1}{Vafle}{m}{n} }
\renewcommand{\cftsubsecpagefont}{\fontsize{11pt}{11pt}\usefont{T1}{Vafle}{m}{n}}
\renewcommand{\cftsubsubsecpagefont}{\fontsize{9pt}{9pt}\usefont{T1}{Vafle}{m}{n}}

\pdfmapfile{=vafle.map}

\usepackage{titlesec}
\titleformat{\section}{\Vutmid}{\thesection}{}{}
\titleformat{\subsection}{\Vutsmall}{\thesubsection}{}{}
\titleformat{\subsubsection}{\Vutsub}{\thesubsubsection}{}{}
%=================================================================
\catcode`\"=\active
\def"{\bgroup\quotedblbase\def"{\textquotedblleft\egroup}}

%\newcommand{\uv}[1]{\raisebox{-1.3ex}[0ex][0ex]{''}\kern-.1ex#1\kern-.1ex``}

\AtBeginDocument{\catcode`\"=\active} %ihned na zacatku dokumentu se provede
\endinput

%% Definice prikazu pro sazbu jednotek
\DeclareMathAlphabet{\jedn}{OT1}{cmr}{m}{n}

\setlength{\mathindent}{30pt}
