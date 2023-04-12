@echo off

rem Get the name of the currently checked out branch
for /f "delims=" %%i in ('git rev-parse --abbrev-ref HEAD') do set current_branch=%%i

rem Set the origin branch name based on the currently checked out branch
set origin_branch=feature/%current_branch%

rem Reset to upstream branch
git reset --hard upstream/%current_branch%

rem Push changes to origin
git push origin %current_branch%:%origin_branch% --force

rem Open GitHub in Google Chrome with pull request page pre-populated
start chrome.exe "https://github.com/username/repository/compare/%origin_branch%?expand=1"

