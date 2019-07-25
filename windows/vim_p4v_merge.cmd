:: in P4V Preferences -> Merge
::      Location:  c:/PATH_TO/vim_p4v_merge.cmd
::      Arguments: %b %1 %2 %r

@setlocal

set VIM_PATH="C:\Program Files\Vim\vim81\gvim.exe" 

set LOCAL=%1
set REMOTE=%2
set BASE=%3
set MERGED=%4

@echo off
title %~n0

%VIM_PATH% +"set lines=999" +"set columns=9999" +"simalt ~x" +"wincmd =" +"wincmd w" +"normal gg]C" -d %REMOTE% %MERGED% %LOCAL%
