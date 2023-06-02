@echo off
setlocal

set "projectRoot=C:\path\to\your\project"

REM Enter the project directory
cd "%projectRoot%"

REM Execute Gradle command to retrieve dependency tree
gradlew.bat dependencies > dependencies.txt

REM Get the desired dependency name from the user
set /p "dependencyName=Enter the dependency name: "

REM Parse the dependency tree and list the specified dependency under other dependencies
findstr /i /c:"%dependencyName%" dependencies.txt | findstr /v /c:"+--- %dependencyName%" | findstr /v /c:"\\--- %dependencyName%"

REM Cleanup: Remove the temporary file
del dependencies.txt

endlocal
