% This document class provides a simple memo for LaTeX users.
% It is based on article.cls and inherits most of the functionality
% that class.
% 
% Author: Rob Oakes, Copyright 2010.  Released under the LGPL, version 3.
% A copy of the LGPL can be found at http://www.gnu.org/licenses/lgpl.html
% This code has been extended for use in VT 4005. No Guarantee to usefulness or correctness or anything else is provided or implied
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MeLabtexMemo}[2010/07/31 - Simple Memo Class, Including Logo]
\RequirePackage{palatino}


% Load the Base Class
\LoadClassWithOptions{article}

% Begin Requirements
\RequirePackage{ifthen}
\RequirePackage[english]{babel}
\RequirePackage{graphicx,caption,csquotes,indentfirst,appendix,lscape,longtable}
\captionsetup{justification=raggedright, singlelinecheck=false,format = hang,labelfont=bf}
\RequirePackage[style = ieee, citestyle = ieee]{biblatex}


% Specialized memo Commands (To, From, Subject, Logo, Letterhead Address)

\def\@memoto{\relax}
\newcommand{\memoto}[1]{\gdef\@memoto{#1}}

\def\@memofrom{\relax}
\newcommand{\memofrom}[1]{\gdef\@memofrom{#1}}

\def\@memosubject{\relax}
\newcommand{\memosubject}[1]{\gdef\@memosubject{#1}}

\def\@memodate{\relax}
\newcommand{\memodate}[1]{\gdef\@memodate{#1}}

\def\@memologo{\relax}
\newcommand{\logo}[1]{\gdef\@memologo{\protect #1}}

\def\@letterheadaddress{\relax}
\newcommand{\lhaddress}[1]{\gdef\@letterheadaddress{#1}}

\def\@memocc{\relax}
\newcommand{\memocc}[1]{\gdef\@memocc{\protect #1}}

\def\@address{\relax}
\newcommand{\address}[1]{\gdef\@address{\protect #1}}
% Custom Document Formatting
\newcommand\decorativeline[1][1pt]{
	\par\noindent%
	\rule[0.5ex]{\linewidth}{#1}\par
}

% Set the Paper Size and margins
\RequirePackage{geometry}
\geometry{margin=1.0in}

% Create the Letterhead and To/From Block

\renewcommand{\maketitle}{\makememotitle}
\newcommand\makememotitle{
	\ifthenelse{\equal{\@memologo}{\relax}}{}
	{ % Create With Logo
	\begin{minipage}[t]{1\columnwidth}%
		\begin{flushright}
			\vspace{-0.6in}
			\@memologo
			\vspace{0.5in}
		\par\end{flushright}%
	\end{minipage}
	}
	\ifthenelse{\equal{\@address}{\relax}}{}
	{ %creates the address field in the top right. must be used with \linebreak
	\begin{minipage}[t]{1\columnwidth}%
		\begin{flushright}
			\vspace{-0.6in}
			\@address
			\vspace{0.5in}
		\par\end{flushright}%
	\end{minipage}
	}
	
	% To, From, Subject Block
	\begin{description}
		\ifthenelse{\equal{\@memoto}{\relax}}{}{\item [{To:}] \@memoto}
		\ifthenelse{\equal{\@memofrom}{\relax}}{}{\item [{From:}] \@memofrom}
		\ifthenelse{\equal{\@memocc}{\relax}}{}{\item [{Cc:}] \@memocc}

		\ifthenelse{\equal{\@memosubject}{\relax}}{}{\item [{Subject:}] \@memosubject}
		\ifthenelse{\equal{\@memodate}{\relax}}{}{\item [{Date:}] \@memodate}
	\end{description}
	\decorativeline\bigskip{}
}