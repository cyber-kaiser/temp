#
# ~/.bashrc
#
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#neofetch
alias ls='ls --color=auto'
alias vi='vim'
PS1='\[\033[01;32m\][\u@\h \[\033[01;34m\]\W\[\033[01;32m\]]\[\033[01;34m\]\$\[\033[00m\] '
# User specific aliases and functions
alias octave='octave --no-gui'
#alias bye='/sbin/shutdown now'
#alias cya='/sbin/shutdown -r now'
alias l='ls -CF'
alias c='clear'
alias mail='mutt'
alias xx='xterm -bg black -fg green -e bash &'
alias XX='xterm -bg black -fg green -fn 12x24 -e bash &'
alias ll='ls -aCF'
alias lll='ls -aCFl'
alias pl='pdflatex -shell-escape'
alias sstart='/sbin/service sshd start'
alias sstatus='/sbin/service sshd status'
alias sstop='/sbin/service sshd stop'
#Functions
genbash(){
        cat << eof > $1.sh
#!/bin/bash

<++>
eof
}
gencpp(){
        cat << eof > $1.cpp
#include <iostream>
using namespace std;

int main(){
        <++>
}
eof
}
genc(){
        cat << eof > $1.c
#include <stdio.h>
#include <<++>.h>
int main(){
        <++>
}
eof
}
gencmod(){
        cat << eof > $1.h
#ifndef $1_H_
#define $1_H_

<++>

#endif
eof
}
genrmd(){
        cat << eof > $1.rmd
---
title : <++> 
author : <++>
output : 
        pdf_document:
                toc : true
                number_sections : true
                highlight : pygments
                includes :
                        in_header : <++>
linkcolor : blue
---

<++>
eof
}
gentpcr(){
        #$1 -> le nom du TP
        cat << eof > DIBRA_$(date +"%m-%d-%y")_$1.rmd
---
title : TP de $1 
author : Ergi DIBRA
date : "\`r format(Sys.time(), '%d %B %Y')\`"
output : 
        pdf_document:
                toc : true
                number_sections : true
                highlight : pygments
                includes :
                        in_header : <++>
linkcolor : blue
---

<++>
eof
}
#chmod -R 755 ~
#chmod -R 755 ~/public_html
alias ydl='youtube-dl'
genhtml(){
        cat << eof > $1.html
<!DOCTYPE html>
<html>
        <head>
                <++>
        </head>
        <body>
                <++>
        </body>
</html>
eof
}
export CLASSPATH=".:/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH"
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java org.antlr.v4.gui.TestRig'
alias ccat='pygmentize -g -O style=fruity,linenos=1,frame=single'
alias refresh-mirrors="sudo reflector -l 30 -f 10 --save /etc/pacman.d/mirrorlist"
