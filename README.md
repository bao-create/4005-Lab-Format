# 4006-Lab-Format
This is a class to use latex to write the ME Lab reports with minimal formatting effort. This class extendes texMemo by Rob Oakes by adding the \address command There is no license for this class.  To try an example, with overleaf, bring in all the files in this repo, except the readme, to a completely blank overleaf workspace. Hit compile. 

Main.tex is an example code for Latex showing off some key things and how to use some of the packages installed in melabtexmemo, but does not go over everything. Dont modify the .cls file unless you really know what you are doing. If you do so please use a branch in this repo.


Becareful with tables, lots of weird stuff happens with them. Tables are special and a pain in the ass. use https://www.tablesgenerator.com/ to get nice looking tables with minimum effort. 
Make sure to pay attention to the options underneath before you click generate. I have loaded lscape and longtable in the class so dont worry about adding the \usepackage commands. You might need to add the booktabs package.

To use with overleaf for a real document, make a new project, then click add a file, choose external source. Paste this link https://raw.githubusercontent.com/bao-create/4005-Lab-Format/master/MeLabtexMemo.cls

click create. Then change the preamble (everything above \maketitle) in your main.tex to what is in the main.tex in this repo. Every so often (~1/week) click on the .cls file and up at the top click refresh in case I have made any updates. If the workspace was setup correctly it will automatically pull in the newest version of the .cls from here. 

More infomation on latex in general is on overleaf's website.

This class adds several packages most of which are formatting, but a few to note are the cleverref package (\cref{}) which should be used in place of \ref{} and biblatex which should be used by adding \addbibresource{"bib_file_name"}. and \printbibliography. These cite (\cite{}) and print the bibliogrpahy in IEEE style. For the .bib file use whatever citation manager you want (zotero, mendeley, etc) and then export the citations you have saved as a biblatex file. Put that in your overleaf workspace and put the file name into \addbibresource. then when you call type \cite it should suggest autocompletes for each of your citations.

There is also support for directly adding MATLAB code to a document (e.g. Lab 4). Simply bring in the .m file to the overleaf workspace then call \lstlisting[style=matlab-editor]{<matlab_file_name.m>} where you want the code in the document (i.e. the appendix). 

If you encounter any issues please leave a ticket, or take a pass at fixing them. If you want some more functionality please suggest it or try implementing it in a different branch. When we get to 4006 i'll update this for those style guidelines.
