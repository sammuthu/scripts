@echo off

setlocal

REM Set the upstream remote name
set upstream_remote=upstream

REM Get the currently checked out branch name
for /f "delims=" %%i in ('git rev-parse --abbrev-ref HEAD') do set upstream_branch=%%i

REM Set the origin remote name
set origin_remote=origin

REM Fetch changes from the upstream repository
git fetch %upstream_remote%

REM Reset your local branch to the upstream branch
git reset --hard %upstream_remote%/%upstream_branch%

REM Push the changes to your forked repository on GitHub
git push --force %origin_remote% %upstream_branch%

echo Done.

