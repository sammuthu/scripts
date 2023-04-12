@echo off

rem Get the name of the currently checked out branch
for /f "delims=" %%i in ('git rev-parse --abbrev-ref HEAD') do set current_branch=%%i

rem Set the origin branch name based on the currently checked out branch
set origin_branch=feature/%current_branch%

rem Reset to upstream branch
git reset --hard upstream/%current_branch%

rem Push changes to origin
git push origin %current_branch%:%origin_branch% --force

rem


rem Get the name of the currently checked out branch
for /f "delims=" %%i in ('git rev-parse --abbrev-ref HEAD') do set current_branch=%%i

rem Get the URL of the remote repository for the current branch
for /f "delims=" %%i in ('git remote get-url --push origin') do set repo_url=%%i

echo The URL of the remote repository for branch %current_branch% is %repo_url%


rem

rem Open GitHub in Google Chrome with pull request page pre-populated
start chrome.exe "https://github.com/username/repository/compare/%origin_branch%?expand=1"

