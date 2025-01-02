% Do not change this file, unless you know what you're doing
% Designed and Created By: Abhinav Chalise (abhinav@chalisezabhinav.com.np) 
% 
\ProvidesClass{ioereport}[Project Report Template]
\LoadClass[a4paper, 12pt]{article}
\RequirePackage[margin=1in, left=1.5in, bottom=1.15in]{geometry}
\RequirePackage{mathptmx} % times font
\RequirePackage{setspace} % for one half spacing
\RequirePackage{tocloft} % table of contents
\RequirePackage{parskip} % paragraph skip set below
\setlength{\parskip}{1.15em}
\RequirePackage{graphicx}
\RequirePackage{glossaries} % for abbreviations 
\RequirePackage{float} % for floating figure/tables placements
\RequirePackage{caption} % for caption formatting
\RequirePackage{hyphenat}
\RequirePackage{hyperref} 
\RequirePackage{amssymb, amsmath, newtxmath}
\RequirePackage{pgffor} % for foreach
\RequirePackage{xstring} % for IfEq
\RequirePackage{datetime}
\RequirePackage{enumitem} % for list items 
\RequirePackage{longtable} % for very large and long tables

% Command for Title Preamble
\newcommand{\titlepreamble}[1]{%
    \def\thetitlepreamble{#1}%
}

% Command for Project Title
\newcommand{\projecttitle}[1]{\def\titlename{#1}}

% Command for Author Names
\newcommand{\authornames}{LaTeX}
\newcommand{\authorrollnumbers}{LaTeX}
\newcommand{\addauthor}[2]{%
    \IfEq {\authornames}{LaTeX} {\edef\authornames{#1}}{\edef\authornames{\authornames, #1}} 
    \IfEq {\authorrollnumbers}{LaTeX} {\edef\authorrollnumbers{#2}}{\edef\authorrollnumbers{\authorrollnumbers, #2}} 
}

% Command to set supervisor name
\newcommand{\supervisor}[1]{\def\supervisorname{#1}}

\renewcommand{\today}{\monthname{} \the\year}

\makeglossaries

\onehalfspacing

\numberwithin{equation}{section}
\renewcommand{\theequation}{\thesection-\arabic{equation}}

\renewcommand{\labelenumi}{\roman{enumi}.}
\setlist[itemize]{topsep=0em, partopsep=0pt, parsep=0.1em, itemsep=0.75em}
\setlist[enumerate]{topsep=0em, partopsep=0pt, parsep=0.1em, itemsep=0.75em}


\newcommand{\phantomsec}{
    \pagenumbering{roman} % Lower case Roman numerals
    \setcounter{page}{1}  % Reset page number to 1
}

\newcommand{\mainsection}{
    \newpage
    \pagenumbering{arabic} % Arabic numerals
    \setcounter{page}{1}   % Reset page number to 1
}

\newcommand{\appendixnumbering}[1]{
    \setcounter{equation}{0}
    \counterwithin{equation}{subsection}
    \renewcommand{\theequation}{#1-\arabic{equation}}
    \setcounter{figure}{0}
    \setcounter{table}{0}
}

% Redefine \section command
\renewcommand{\section}{\@startsection
    {section}           % the name of the sectioning command to be redefined
    {1}                 % the level of the section
    {0mm}               % the indentation of the heading from the left margin
    {-\baselineskip}    % the space above the heading
    {0.75\baselineskip}  % the space below the heading
    {\normalfont\fontsize{12}{14}\bfseries}} % formatting of the heading

% Redefine \subsection command
\renewcommand{\subsection}{\@startsection
    {subsection}        % the name of the sectioning command to be redefined
    {2}                 % the level of the section
    {0mm}               % the indentation of the heading from the left margin
    {-\baselineskip}    % the space above the heading
    {0.25\baselineskip} % the space below the heading
    {\normalfont\fontsize{12}{14}\bfseries}} % formatting of the heading
    
% Redefine \subsubsection command
\renewcommand{\subsubsection}{\@startsection
    {subsubsection}     % the name of the sectioning command to be redefined
    {3}                 % the level of the section
    {0mm}               % the indentation of the heading from the left margin
    {-\baselineskip}    % the space above the heading
    {0.25\baselineskip} % the space below the heading
    {\normalfont\fontsize{12}{14}\bfseries}} % formatting of the heading



% Table of Contents, List of Figures and List of Tables configurations
\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\cfttoctitlefont}{\fontsize{12pt}{12pt}\bfseries}
\setlength{\cftbeforetoctitleskip}{0.25\baselineskip} % Adjust spacing before TOC title

% Appendix Style for Table, Figure, Table of Contents and Subsection
\newcommand{\AppendixStyle}[1]{
  \renewcommand{\thesubsubsection}{\Alph{subsection}.\arabic{subsubsection}}
  \renewcommand{\thesubsection}{Appendix \Alph{subsection}:}
  \renewcommand{\thetable}{\Alph{subsection}-\arabic{table}}
  \renewcommand{\thefigure}{\Alph{subsection}-\arabic{figure}}
  \addtocontents{toc}{\protect\setlength{\cftsubsecnumwidth}{#1}}
}

% Adjust the space between entries in the TOC
\setlength{\cftbeforesecskip}{0.5em}     % Space before sections
\setlength{\cftbeforesubsecskip}{0.25em} % Space before subsections
\setlength{\cftbeforesubsubsecskip}{0.25em} % Space before subsubsections

\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}  % Set dots between section title and page number
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}  % Set dots for subsections
\renewcommand{\cftsubsubsecleader}{\cftdotfill{\cftdotsep}}  % Set dots for subsubsections

\renewcommand{\cftloftitlefont}{\fontsize{12pt}{12pt}\bfseries}
\setlength{\cftbeforeloftitleskip}{0.25em} % Adjust spacing before LOF title

\renewcommand{\cftlottitlefont}{\fontsize{12pt}{12pt}\bfseries}
\setlength{\cftbeforelottitleskip}{0.25em} % Adjust spacing before LOT title

\renewcommand{\thefigure}{\thesection-\arabic{figure}}
\renewcommand{\thetable}{\thesection-\arabic{table}}
\@addtoreset{figure}{section}
\@addtoreset{table}{section}
\setlength{\cftfigindent}{0pt}
\renewcommand{\cftfigpresnum}{Figure }
\addtolength{\cftfignumwidth}{2.75em}
\setlength{\cfttabindent}{0pt}
\renewcommand{\cfttabpresnum}{Table }
\addtolength{\cfttabnumwidth}{2.5em}

% Setting dot separation for LoF and LoT
\renewcommand{\cftfigdotsep}{0.5}
\renewcommand{\cfttabdotsep}{0.5}
\renewcommand{\cftdotsep}{0.5}



\captionsetup[figure]{labelformat=simple, labelsep=colon, name=Figure}
\captionsetup[table]{labelformat=simple, labelsep=colon, name=Table}


% List of Abbreviations configurations
\newglossarystyle{acronyms-only}{%
  \renewenvironment{theglossary}{\begin{longtable}[l]{@{}ll@{}}} {\end{longtable}}%
  \renewcommand*{\glossaryheader}{}%
  \renewcommand*{\glsgroupheading}[1]{}%
  \renewcommand*{\glossentry}[2]{\glsentryitem{##1}\glstarget{##1}{\glossentryname{##1}} & \glossentrydesc{##1}\tabularnewline}%
  \renewcommand*{\subglossentry}[3]{\glstarget{##2}{\glossentryname{##2}} & \glossentrydesc{##2}\tabularnewline}%
  \renewcommand*{\glsgroupskip}{}%
}


\renewcommand{\refname}{References}  % Change section name to "References" 



% Command to generate the cover page
\newcommand{\coverpage}[1]{ % Usage: \coverpage
    \def\namerolltable{} % Clear previous contents
    \foreach \name [count=\i] in \authornames {
        \foreach \roll [count=\j] in \authorrollnumbers {
            \ifnum\i=\j
                \xdef\namerolltable{\namerolltable \name & \roll \\} 
            \fi
        }
    }
    \begin{titlepage}
        \thispagestyle{empty} % No page numbering
        \centering % Center align everything
        
        % Logo
        \includegraphics[width=0.25\textwidth]{TU_Logo.jpg} % Change "logo.png" to your logo file
        
        % Title and institute
        \vspace*{\fill} % Dynamic line break
        \textbf{TRIBHUVAN UNIVERSITY \\
        INSTITUTE OF ENGINEERING \\
        THAPATHALI CAMPUS} \\
        
        % Project title
        \vspace*{\fill} % Dynamic line break
        \textbf{\thetitlepreamble\\
        {\titlename}} \\
        
        % Authors
        \vspace*{\fill} % Dynamic line break
        \textbf{Submitted By:} \\
        \begin{tabular*}{0.6\textwidth}{@{}l@{\extracolsep{\fill}}r@{}}
            \namerolltable
        \end{tabular*}
          
        
        % Submitted to (fixed)
        \vspace*{\fill} % Dynamic line break
        \textbf{Submitted To:} \\
        Department of Electronics and Computer Engineering \\
        Thapathali Campus \\
        Kathmandu, Nepal \\
        
        % Date
        \vspace*{\fill} % Dynamic line break
        \today
    \end{titlepage}
}

% Generate the new cover page with additional text and dynamic page numbering
\newcommand{\coverpageB}[1]{ % Usage: \coverpageB
    \begin{titlepage}

        \centering % Center align everything
        
        % Logo
        \includegraphics[width=0.25\textwidth]{TU_Logo.jpg} % Change "logo.png" to your logo file
        
        % Title and institute
        \vspace*{\fill} % Dynamic line break
        \textbf{TRIBHUVAN UNIVERSITY \\
        INSTITUTE OF ENGINEERING \\
        THAPATHALI CAMPUS} \\
        
        % Project title
        \vspace*{\fill} % Dynamic line break
        \textbf{\thetitlepreamble\\
        {\titlename}} \\
        
        % Authors
        \vspace*{\fill} % Dynamic line break
        \textbf{Submitted By:} \\
        \begin{tabular*}{0.6\textwidth}{@{}l@{\extracolsep{\fill}}r@{}}
            \namerolltable
        \end{tabular*}
        
        % Submitted to (fixed)
        \vspace*{\fill} % Dynamic line break
        \textbf{Submitted To:} \\
        Department of Electronics and Computer Engineering \\
        Thapathali Campus \\
        Kathmandu, Nepal \\
        
        % Additional text
        \vspace*{\fill} % Dynamic line break
        In partial fulfillment for the award of the Bachelor of Engineering in Electronics, Communication and Information.
        
        % Supervision
        \vspace*{\fill} % Dynamic line break
        \textbf{Under the Supervision of} \\
        \supervisorname \\
        
        % Date
        \vspace*{\fill} % Dynamic line break

        \today
    \end{titlepage}
}


\endinput
