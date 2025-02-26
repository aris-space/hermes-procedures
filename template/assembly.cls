\ProvidesClass{assembly}
\LoadClass[a4paper,12pt]{article}

\RequirePackage{style} % Include the .sty file

\makeatletter
\def\maketitle{
    \begin{center}
        % Left Logo
        \includegraphics[height=3cm]{global-assets/Hermes_Logo2Aris.png}\hfill
        % Title
        \large \textbf{HER\_[XXX]\_[ProcedureName]\_[00X]}
        % Right Logo
        \hfill \includegraphics[height=1.5cm]{global-assets/ARIS_space_to_grow_LOGO-black.png}
    \end{center}
    \vspace{1cm} % Adjust the vertical space after the title
    
    \begin{longtable}{@{} l l @{\hspace{4.7cm}} |l |p{3cm} |}
        \cline{3-4}
        \textbf{Author} &[Name]& \textbf{Executing} & \\
        \cline{3-4}
        \textbf{Date} &[EditDate]& \textbf{Checking} & \\
        \cline{3-4}
        \textbf{Revision Nr.} &[00X]& \textbf{Estimated Time} & \\
        \cline{3-4}
    \end{longtable}
}
\makeatother

% Command to add a row to a table
\newcommand{\addrow}[4]{%
    \stepcounter{itemno} \arabic{itemno} & #1 & #2 & $\square$ & #3 \\ 
    \hline
}

% Custom table for Tools
\newcommand{\toolstable}{%
    \setcounter{itemno}{0} % Reset counter
    \begin{longtable}{|c|p{7cm}|p{2cm}|C{1.1cm}|p{4cm}|}
        \hlineB{3}
        \rowcolor{blue!50}\multicolumn{5}{|c|}{\textbf{Tools}}\\
        \hline
        \rowcolor{gray!25}\footnotesize{\#} & \footnotesize{Name} & \footnotesize{Amount} & \footnotesize{Done} & \footnotesize{Comments} \\
        \hline
        \input{Inc/tools.tex} % Include content from external file
        \hlineB{3}
    \end{longtable}
}

% Custom table for Materials
\newcommand{\materialstable}{%
    \setcounter{itemno}{0} % Reset counter
    \begin{longtable}{|c|p{7cm}|p{2cm}|C{1.1cm}|p{4cm}|}
        \hlineB{3}
        \rowcolor{blue!50}\multicolumn{5}{|c|}{\textbf{Tools}}\\
        \hline
        \rowcolor{gray!25}\footnotesize{\#} & \footnotesize{Name} & \footnotesize{Amount} & \footnotesize{Done} & \footnotesize{Comments} \\
        \hline
        \input{Inc/materials.tex} % Include content from external file
        \hlineB{3}
    \end{longtable}
}


% Execution Table
\newcommand{\executiontable}{%
    \setcounter{itemno}{0} % Reset counter
    \begin{longtable}{|c|p{7cm}|p{2cm}|C{1.1cm}|p{4cm}|}
        \hlineB{3}
        \rowcolor{blue!50}\multicolumn{5}{|c|}{\textbf{Execution}}\\
        \hline
        \rowcolor{gray!25}\footnotesize{\#} & \footnotesize{Task} & \footnotesize{Specs} & \footnotesize{Done} & \footnotesize{Comments} \\
        \hline
        \input{Inc/execution.tex} % Include content from external file
        \hlineB{3}
    \end{longtable}
}

% Signature and Completion Section
\newcommand{\signaturesection}{
    \vspace{2cm}
    \centering
    \begin{tabular}{|p{2cm}|p{4cm}|p{2cm}|p{4cm}|}
        \hline
        \rowcolor{gray!25}\multicolumn{4}{|c|}{\textbf{Approval and Completion}}\\
        \hline
        \textbf{Time}& & \textbf{Name} &  \\
        \hline
        \textbf{Date}& &\textbf{Signature}& \\
        \hline
    \end{tabular}
}

