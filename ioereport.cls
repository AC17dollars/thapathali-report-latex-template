% Do not change this file, unless you know what you're doing
% Designed and Created By: Abhinav Chalise (abhinav@chalisezabhinav.com.np) 
% 
\ProvidesClass{ioereport}[Project Report Template]
\LoadClass[a4paper, 12pt]{article}
\RequirePackage[margin=1in, left=1.5in, bottom=1.15in]{geometry}
\RequirePackage{mathptmx} 
\RequirePackage{setspace}
\RequirePackage{tocloft}
\RequirePackage{parskip}
\setlength{\parskip}{1.15em}
\RequirePackage{graphicx}
\RequirePackage{glossaries} % for abbreviations 
\RequirePackage{float} % for floating figure/tables placements
\RequirePackage{caption} % for caption formatting
\RequirePackage{hyphenat}
\RequirePackage{hyperref}
\RequirePackage{amssymb, amsmath, newtxmath}
\RequirePackage{etoolbox}  % for dynamic author list
\RequirePackage{datetime}
\RequirePackage{enumitem} % for list items 
\RequirePackage{longtable} % for very large and long tables


\newcommand{\titlepreamble}[1]{%
    \def\thetitlepreamble{#1}%
}

\makeglossaries

\onehalfspacing
\renewcommand{\today}{\monthname{} \the\year}

\numberwithin{equation}{section}
\renewcommand{\theequation}{\thesection-\arabic{equation}}

\renewcommand{\labelenumi}{\roman{enumi}.}
\setlist[itemize]{topsep=0em, partopsep=0pt, parsep=0.1em, itemsep=0.75em}
\setlist[enumerate]{topsep=0em, partopsep=0pt, parsep=0.1em, itemsep=0.75em}

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


\newglossarystyle{acronyms-only}{%
  \renewenvironment{theglossary}{\begin{longtable}[l]{@{}ll@{}}} {\end{longtable}}%
  \renewcommand*{\glossaryheader}{}%
  \renewcommand*{\glsgroupheading}[1]{}%
  \renewcommand*{\glossentry}[2]{\glsentryitem{##1}\glstarget{##1}{\glossentryname{##1}} & \glossentrydesc{##1}\tabularnewline}%
  \renewcommand*{\subglossentry}[3]{\glstarget{##2}{\glossentryname{##2}} & \glossentrydesc{##2}\tabularnewline}%
  \renewcommand*{\glsgroupskip}{}%
}


\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\cfttoctitlefont}{\fontsize{12pt}{12pt}\bfseries}
\setlength{\cftbeforetoctitleskip}{0.25\baselineskip} % Adjust spacing before TOC title

% Adjust the space between entries in the TOC
\setlength{\cftbeforesecskip}{0.5em}     % Space before sections
\setlength{\cftbeforesubsecskip}{0.25em} % Space before subsections
\setlength{\cftbeforesubsubsecskip}{0.25em} % Space before subsubsections


\renewcommand{\cftloftitlefont}{\fontsize{12pt}{12pt}\bfseries}
\setlength{\cftbeforeloftitleskip}{0.25\baselineskip} % Adjust spacing before LOF title

\renewcommand{\cftlottitlefont}{\fontsize{12pt}{12pt}\bfseries}
\setlength{\cftbeforelottitleskip}{0.25\baselineskip} % Adjust spacing before LOT title

\renewcommand{\thefigure}{\thesection-\arabic{figure}}
\renewcommand{\thetable}{\thesection-\arabic{table}}
\@addtoreset{figure}{section}
\@addtoreset{table}{section}
\renewcommand{\l@figure}[2]{\@dottedtocline{1}{0pt}{2em}{\figurename\ #1}{#2}}
\renewcommand{\l@table}[2]{\@dottedtocline{1}{0pt}{2em}{\tablename\ #1}{#2}}


\captionsetup[figure]{labelformat=simple, labelsep=colon, name=Figure}
\captionsetup[table]{labelformat=simple, labelsep=colon, name=Table}


\renewcommand{\refname}{References}  % Change section name to "References" 




% Command to set supervisor name
\newcommand{\supervisor}[1]{\def\supervisorname{#1}}

\newcommand{\projecttitle}[1]{\def\titlename{#1}}

\newcommand{\addauthor}[2]{ % Usage: \addauthor{Name}{ID}
    \appto{\authorlist}{
        \begin{tabular*}{0.6\textwidth}{@{}l@{\extracolsep{\fill}}r@{}}
            #1 & #2 \\
        \end{tabular*}
    }
}

% Initialize the author list
\newcommand{\authorlist}{}

% Command to generate the cover page
\newcommand{\coverpage}[2]{ % Usage: \coverpage{Project Title}{Author Info}
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
        {#1}} \\
        
        % Authors
        \vspace*{\fill} % Dynamic line break
        \textbf{Submitted By:} \\
        \authorlist % Print the list of authors and IDs
        
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
\newcommand{\coverpageB}[2]{ % Usage: \coverpageB{Project Title}{Author Info}
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
        {#1}} \\
        
        % Authors
        \vspace*{\fill} % Dynamic line break
        \textbf{Submitted By:} \\
        \authorlist % Print the list of authors and IDs
        
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





\newcommand{\phantomsec}{
    \pagenumbering{roman} % Lower case Roman numerals
    \setcounter{page}{1}  % Reset page number to 1
}

\newcommand{\mainsection}{
    \newpage
    \pagenumbering{arabic} % Arabic numerals
    \setcounter{page}{1}   % Reset page number to 1
}

% Configure tocloft package for compact dots in table of contents
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}  % Set dots between section title and page number
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}  % Set dots for subsections
\renewcommand{\cftsubsubsecleader}{\cftdotfill{\cftdotsep}}  % Set dots for subsubsections



\endinput