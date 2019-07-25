:: in P4V Preferences -> Diff
::      Location:  c:/PATH_TO/vim_p4v_diff.cmd
::      Arguments: %1 %2

@setlocal

set VIM_PATH="C:\Program Files\Vim\vim81\gvim.exe" 

set FIRST=%1
set SECOND=%2
set THIRD=%3

IF "%FIRST:~-1%"=="@" (
    set LOCAL=%FIRST%=%SECOND%
    set REMOTE=%THIRD%
) ELSE (
    IF "%SECOND:~-1%"=="@" (
        set LOCAL=%FIRST%
        set REMOTE=%SECOND%=%THIRD%
    ) ELSE (
        set LOCAL=%FIRST%
        set REMOTE=%SECOND%
    )
)

@echo off
title %~n0

%VIM_PATH% +"set lines=999" +"set columns=9999" +"simalt ~x" +"wincmd =" +"wincmd w" +"normal gg]C" -d %REMOTE% %LOCAL% 
