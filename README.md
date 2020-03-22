# 4005-Lab-Format
This is a class to use latex to write the ME Lab reports with minimal formatting This class extendes texMemo by Rob Oakes by adding \address command There is no license for this class.  To try an example, with overleaf, bring in all the files in this repo, except the readme, to a completly blank overleaf workspace. Hit compile. 

Main.tex is an example code for Latex showing off some key things and how to use some of the packages installed in melabtexmemo, but does not go over everything. Dont modify the .cls file unless you really know what you are doing. If you do so please use a branch in this repo.


Becareful with tables, lots of weird stuff happens with them. Tables are special and a pain in the ass. use https://www.tablesgenerator.com/
Make sure to pay attention to the options. I have loaded lscape and longtable in the class

To use with overleaf not as an example, make a new project, then add a file, choose external source. Paste this link https://raw.githubusercontent.com/bao-create/4005-Lab-Format/master/MeLabtexMemo.cls

click create. then change the preamble to what is in the main.tex in this repo. more infomation on latex in general is on overleaf's website.

this class adds several packages most of which are formatting but a few to note are the cleverref package (\cref{}) which should be used in place of \ref{} and biblatex which should be used by adding \addbibresource{"bib file name"}. and \printbibliography. These cite and print the bibliogrpahy in IEEE style. 

If you encounter any issues please leave a ticket, or take a pass at fixing them. If you want some more functioanlty please suggest it or try implementing it in a different branch. 
