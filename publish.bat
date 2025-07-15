@echo off
echo ========================================
echo Jekyll Site Publisher
echo ========================================
echo.

REM Check if we're in the right directory
if not exist "_config.yml" (
    echo Error: _config.yml not found. Please run this script from your Jekyll site root directory.
    pause
    exit /b 1
)

REM Check if bundle is installed
bundle --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Bundle not found. Please install Ruby and Bundler first.
    echo Visit: https://jekyllrb.com/docs/installation/windows/
    pause
    exit /b 1
)

echo Installing/updating dependencies...
bundle install
if %errorlevel% neq 0 (
    echo Error: Bundle install failed
    pause
    exit /b 1
)

echo.
echo Building Jekyll site...
bundle exec jekyll build
if %errorlevel% neq 0 (
    echo Error: Jekyll build failed
    pause
    exit /b 1
)

echo.
echo Checking git status...
git status

echo.
echo Adding changes to git...
git add .

echo.
set /p commit_message="Enter commit message (or press Enter for default): "
if "%commit_message%"=="" set commit_message=Update site content

echo Committing changes...
git commit -m "%commit_message%"
if %errorlevel% neq 0 (
    echo No changes to commit or commit failed
)

echo.
echo Pushing to GitHub...
git push origin main
if %errorlevel% neq 0 (
    echo Error: Push failed
    pause
    exit /b 1
)

echo.
echo ========================================
echo Site published successfully!
echo Your site will be available at: https://aeropher.github.io/
echo It may take a few minutes to update.
echo ========================================
pause