@echo off
setlocal

rem Get the current directory
set "current_dir=%cd%"

rem Set the path to your IntelliJ IDEA installation directory
set "idea_dir=C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2021.1.3\bin"

rem Launch IntelliJ IDEA with the current directory as the argument
call "%idea_dir%\idea.bat" "%current_dir%"

endlocal
