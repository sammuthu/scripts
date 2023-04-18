@echo off

set /p url=Enter the URL of the forked branch:

rem Extract the directory name from the URL
set "url=%url:/=\%"
for /f "delims=" %%i in ('echo %url% ^| %SystemRoot%\System32\find.exe /V "."') do set "dir=%%~ni"

set baseUrl=https://github.com/example-user/

git clone %url% %dir%
cd %dir%

set upstreamUrl=%baseUrl%%dir%.git

git remote add upstream %upstreamUrl%
git remote -v

rem Build the project with Gradle (skip tests)
gradle build --no-tests

pause
