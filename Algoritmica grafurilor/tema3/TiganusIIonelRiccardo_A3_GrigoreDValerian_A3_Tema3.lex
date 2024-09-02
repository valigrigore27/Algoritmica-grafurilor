\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage{graphicx}
\usepackage{amsmath}
\usepackage{tipa}
\usepackage{amssymb}
\usepackage{algpseudocode}
\usepackage{tikz} 
\usepackage{textcomp}
\usepackage{hyperref}

\title{Tema3}
\author{Tiganus Ionel, Grigore Valerian, grupa A3}
\date{January 2023}

\begin{document}
\maketitle
\large
\section*{Exercitiul 1}

\quad a)Stiind ca \textit{G = (S, T; E)} este un graf bipartit (din enunt) si ca cuplajele \textit{M, M`} contin doar muchiile respective ce leaga nodurile \textit{S} cu nodurile \textit{T} (adica \textit{M $\subseteq$ E, M` $\subseteq$ E}) deducem ca si graficul partial \textit{G` = (S $\cup$T,M $\cup$M`)} este un graf bipartit. Din faptul ca graful partial este bipartit inseamna ca si componentele conexe ale acestuia sunt bipartite (orice nod de tipul \textit{S} se leaga cu macar un nod de tipul \textit{T}).
    
    Vom lua un exemplu pentru a ilustra ca afirmatia este adevarata: Fie \textit{S = (a,b,c), T = (d,e,f), A = (a,b), B = (e,f)} si cu cuplajele respective \textit{M = ((a,d), (b,f)), M` = (c,e)}, graful obtinut va fi acesta: 


    \begin{tikzpicture}[node distance={20mm}, thick, main/.style = {draw, circle}]
    \node[main] (1) {$a$};
    \node[main] (2) [above left of=1] {$b$};
    \node[main] (3) [below left of=1] {$c$}; 
    \node[main] (4) [below right of=1] {$d$};
    \node[main] (5) [above right of=2] {$e$}; 
    \node[main] (6) [above right of=1] {$f$};
    
    \draw (1) -- (4);
    \draw (2) -- (6);
    \draw (3) -- (5);
    \end{tikzpicture}
     
\section*{Exercitiul 2}
\quad a) Vom presupune ca clasele \textit{V$_i$} nu sunt multimi stabile cu \textit{G}. Stiind ca atunci cand exista o muchie dintre doua noduri dintr-o multime \textit{V$_i$} in graful \textit{$\vec{G}$} va avea loc un arc dintre respectivele noduri (fiind o orientare ciclica se deduce acest lucru), dar intrucat exista arc, unul dintre noduri are gradul diferit de 0 ceea ce duce la contrariul enuntului. (1)

    Abordarea pentru inegalitate va fi urmatoarea: pentru fiecare multime \textit{V$_i$} vom prelua toate nodurile cu grad 0 si le vom elimina si totodata vom face o colorare pentru multimea respectiva. (2).
\section*{Exercitiul 3}
     \quad b) Luam cazul cu o singura sursa si o singura destinatie: alegem \textit{s-sursa} si \textit{t-destinatia}.Deci \textit{s} o sa apartina multimii \textit{X} si \textit{t} multimii \textit{Y}.Pentru a determina un \textit{m-flux} maxim putem face urmatoarele:

 Pentru toate nodurile care ajung in \textit{X} si pentru toate care pleaca din \textit{Y} vom adauga cate un arc care va avea o capacitate foarte mare.

 Acum, folosim algoritmul lui \textit{FordFord-Fulkerson} si calculam fluxul maxim.
Pentru a afla cat e un \textit{m-flux} de valoare maxima putem scadea fluxul calculat anterior din fluxul fiecarui arc din \textit{E}.

 Algoritmul are o complexitate \textit{O(E*mf)}, \textit{mf-valoarea} maxima pt flux.
    
     
\section*{Exercitiul 4}
\quad a) Clasa \textit{NP} este definita ca fiind clasa limbajelor, definind probleme de decizie, ce pot fi verificate in timp polinomial. Deci pentru a demonstra problema \textit{FOREST} face parte din clasa de probleme \textit{NP} trebuie sa aratam ca aceasta se poate rezolva intr-un timp polinomial. Algoritmul acesta se poate rezolva in timp polinomial deci problema \textit{FOREST} face parte in categoria problemelor clasei \textit{NP} intrucat pentru acesta se face parcurgerea tuturor posibilitatilor de partitionare a grafului aferent si verificarea fiecarea daca este o padure (ceea ce duce la un timp polinomial, evident).
    
      
     b)Vom presupune prin absurd ca \textit{G} este \textit{3COL} insa \textit{H} nu poate avea 3 paduri. Prin aceasta deducem ca \textit{$\exists$ cel putin x$_1$,x$_2$} care sa fie legate la un nod din \textit{G} si sa aibe aceeasi culoare. Intrucat \textit{x$_1$ si x$_2$} au aceeasi culoare presupune ca si ca nodul din \textit{G} sa aiba aceeasi culoare dar daca ar avea aceeasi culoare s-ar contrazice cu colorarea grafului \textit{G}. (1)
        
    Vom presupune prin absurd ca \textit{H} poate avea 3 paduri insa \textit{G} nu este \textit{3COL}. Pentru a forma cele 3 paduri \textit{H-ului} ne trebuie sa cautam pentru fiecare padure o culoare distincta astfel pentru cele 3 paduri ne trebuie 3 colorari deci ca graful \textit{G} sa fie \textit{3COL}. (2)
    
    Din (1),(2): \textit{G} este \textit{3COL} daca si numai daca \textit{H} poate fi partitionat in 3 paduri.
     
     c)Pentru a verifica daca face parte problema \textit{FOREST} la \textit{NP-complete} prima oara trebuie sa demonstram ca face parte din clasa \textit{NP} (am rezolvat la punctul \textit{a)} aceasta). Problema \textit{FOREST} face parte din \textit{NP-complete} intrucat exista o problema \textit{X} care se reduce la problema aceasta (orice instanta a problemei \textit{X} se poate regasi si la problema \textit{FOREST} iar solutionarea acestora sa se regaseasca). O astfel de problema este fix problema \textit{3COL} astfel cele 3 colorari a grafului din  problema \textit{3COL} sa fie partitionarea in 3 paduri diferite pentru problema \textit{FOREST} (determinarea celor 3 colorari se poate face prin determinarea celor 3 paduri, fiecare padure fiind reprezentata de o culoare anume).
\end{document}