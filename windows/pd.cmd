@echo off
setlocal

set arg=%1

if "%arg%"=="sns" (
  cd C:\path\to\sns\directory
) else if "%arg%"=="sns-async" (
  cd C:\path\to\sns-async\directory
) else if "%arg%"=="sia" (
  cd C:\path\to\sia\directory
) else if "%arg%"=="sia-async" (
  cd C:\path\to\sia-async\directory
) else (
  echo Argument doesn't match.
)

endlocal
