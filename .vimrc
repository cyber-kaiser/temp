set nocompatible
"execute pathogen#infect()
filetype plugin indent on
syntax on
map <F6> :setlocal spell! spelllang=fr<CR>
set t_Co=256
"indentation
autocmd Filetype java,c,cpp set cindent
autocmd Filetype java,c,cpp set cinwords=if,else,switch,case,for,while,do,done,fi,esac,then
set expandtab
set autoindent
"""set relativenumber
autocmd Filetype java,c,cpp set smartindent
let g:tex_flavor='latex'
inoremap <C-x> <Esc>:w<CR>
inoremap <C-c> <Esc>:q!<CR>
inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
colorscheme elflord
:


"Java/C/C++ snippets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"new class
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype java  inoremap ;c public<Space>class<Space>Test<Space>{<CR><CR><CR>}<Esc>2ki<tab><++>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if-else statement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype java,c,cpp  inoremap ;if if(<++>){<CR><++><CR>}else<Space>{<CR><++><CR>}<Esc>5ki
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"case-switch statement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype java,c,cpp  inoremap ;sw switch<Space>(<++>)<Space>{<CR>case<Space>0:<CR><++><CR><C-D>break;<CR>case<space>1:<CR><++><CR><C-D>break;<CR>default:<CR><++><CR><C-D>break;<CR>}<Esc>11ki
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"for statement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype java,c,cpp inoremap ;for for(<++>;<space><++>;<space><++>){<cr><++><cr>
autocmd Filetype java,c,cpp inoremap ;do do{<cr><++><cr>}<space>while(<++>);
autocmd Filetype java,c,cpp inoremap ;fx <++><space><++>(<++>){<cr><++><cr>}
autocmd Filetype java,c,cpp inoremap ;re repeat{<cr><++><cr>}<space>until(<++>);
autocmd Filetype cpp map <F5> :!g++ % -o %<<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""BASH
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype bash,sh inoremap ;if if<tab>[<space><++><space>]<cr>then<cr><tab><++><cr><c-d>fi
autocmd Filetype bash,sh inoremap ;elf if<space>[<space><++><space>]<cr>then<cr><tab><++><cr><c-d>elif<space>[<space><++><space>]<cr>then<cr><tab><++><cr><c-d>else<cr><tab><++><cr><c-d>fi
autocmd Filetype bash,sh inoremap ;for for<space><++><space>in<space><++><cr>do<cr><tab><++><cr><c-d>done
autocmd Filetype bash,sh inoremap ;m $((<space><++><space><++><space><++><space>))
autocmd Filetype bash,sh inoremap ;wh while<space>[<space><++><space>]<cr>do<cr><tab><++><cr><c-d>done
autocmd Filetype bash,sh inoremap ;unt until<space>[<space><++><space>]<cr>do<cr><tab><++><cr><c-d>done
autocmd Filetype bash,sh inoremap ;sw case<space><++><space>in<cr><++>)<cr><tab><++><cr>;;<cr><c-d><++>)<cr><tab><++><cr>;;<cr><c-d>*)<cr><tab><++><cr>exit<cr>;;<cr><c-d>esac
autocmd Filetype bash,sh inoremap ;fx <++>(){<cr><tab><++><cr><c-d>}
autocmd Filetype bash,sh inoremap ;sel select<space><++><space>in<space><++><cr>do<cr><tab><++><cr><c-d>done
"""LATEX
autocmd FileType tex inoremap ;fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
autocmd FileType tex inoremap ;fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
autocmd FileType tex inoremap ;exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
autocmd FileType tex inoremap ;em \emph{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;bf \textbf{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;it \textit{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;ct \citet{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;p \citep{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
autocmd FileType tex inoremap ;x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
autocmd FileType tex inoremap ;ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ref \ref{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;t \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
autocmd FileType tex inoremap ;tab \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
autocmd FileType tex inoremap ;can \cand{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ;con \const{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ;v \vio{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ;a \href{}{<++>}<Space><++><Esc>2T{i
autocmd FileType tex inoremap ;sc \textsc{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;sec \section{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;st <Esc>F{i*<Esc>f}i
autocmd FileType tex inoremap ;beg \begin{%DELRN%}<Enter><++><Enter>\end{%DELRN%}<Enter><Enter><++><Esc>4kfR:MultipleCursorsFind<Space>%DELRN%<Enter>c
autocmd FileType tex inoremap ;up \usepackage{}<Esc>i
autocmd FileType tex inoremap ;tt \texttt{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;bt {\blindtext}
autocmd FileType tex inoremap ;nu $\varnothing$
autocmd FileType tex inoremap ;col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
"""END

"""Logical Symbols
autocmd FileType tex inoremap ;m $$<Space><++><Esc>2T$i
autocmd FileType tex inoremap ;M $$$$<Enter><Enter><++><Esc>2k$hi
autocmd FileType tex inoremap ;neg {\neg}
autocmd FileType tex inoremap ;V {\vee}
autocmd FileType tex inoremap ;or {\vee}
autocmd FileType tex inoremap ;L {\wedge}
autocmd FileType tex inoremap ;and {\wedge}
autocmd FileType tex inoremap ;ra {\rightarrow}
autocmd FileType tex inoremap ;la {\leftarrow}
autocmd FileType tex inoremap ;lra {\leftrightarrow}
autocmd FileType tex inoremap ;fa {\forall}
autocmd FileType tex inoremap ;ex {\exists}
autocmd FileType tex inoremap ;dia      {\Diamond}
autocmd FileType tex inoremap ;box      {\Box}
"""END
autocmd Filetype tex inoremap ;nom {\textsc{nom}}
autocmd FileType tex inoremap ;acc {\textsc{acc}}
autocmd FileType tex inoremap ;dat {\textsc{dat}}
autocmd FileType tex inoremap ;gen {\textsc{gen}}
autocmd FileType tex inoremap ;abl {\textsc{abl}}
autocmd FileType tex inoremap ;voc {\textsc{voc}}
autocmd FileType tex inoremap ;loc {\textsc{loc}}
autocmd Filetype tex inoremap ;inst {\textsc{inst}}
"autocmd FileType tex inoremap ;

"""HTML
autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
autocmd FileType html inoremap ;h1 <h1></h1><Enter><Enter><p><++><Esc>2k2hi
autocmd FileType html inoremap ;h2 <h2></h2><Enter><Enter><p><++><Esc>2k2hi
autocmd FileType html inoremap ;h3 <h3></h3><Enter><Enter><p><++><Esc>2k2hi
autocmd FileType html inoremap ;p <p></p><Enter><Enter><++><Esc>02kf>a
autocmd FileType html inoremap ;a <a<Space>href=""><++></a><Space><++><Esc>F"i
autocmd FileType html inoremap ;ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ;li <Esc>o<li></li><Esc>F>a
autocmd FileType html inoremap ;ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i

"""END
""".bib
autocmd FileType bib inoremap ;a @article{<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>journal<Space>=<Space>"<++>",<Enter><Tab>volume<Space>=<Space>"<++>",<Enter><Tab>pages<Space>=<Space>"<++>",<Enter><Tab>}<Enter><++><Esc>8kA,<Esc>i
autocmd FileType bib inoremap ;b @book{<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>publisher<Space>=<Space>"<++>",<Enter><Tab>}<Enter><++><Esc>6kA,<Esc>i
autocmd FileType bib inoremap ;c @incollection{<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>booktitle<Space>=<Space>"<++>",<Enter><Tab>editor<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>publisher<Space>=<Space>"<++>",<Enter><Tab>}<Enter><++><Esc>8kA,<Esc>i
"""END
"""RMD setup
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}	"Interpret .md files, etc. as .markdown
"MARKDOWN
	autocmd Filetype markdown,rmd inoremap ;n ---<Enter><Enter>
	autocmd Filetype markdown,rmd inoremap ;b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap ;s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap ;e **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap ;h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap ;i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ;a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ;1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ;2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ;3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ;l --------<Enter>
	autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
	autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
	autocmd Filetype rmd inoremap ;r ```{r,<space>echo=TRUE}<CR>```<CR><CR><esc>2kO
"END
