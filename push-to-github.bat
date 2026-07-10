@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ============================================
echo   LIONS FITNESS - Push to GitHub
echo ============================================
echo.

REM Remove any partial/broken git repo first
if exist ".git" (
  echo Removing existing .git folder...
  rmdir /s /q ".git"
)

echo Initializing repository...
git init
git add -A
git commit -m "Initial commit: LIONS FITNESS landing page with scroll-driven video hero"
git branch -M main
git remote add origin https://github.com/ohadlion/Lions-website.git

echo.
echo Pushing to GitHub...
git push -u origin main

echo.
echo If push was REJECTED because the repo already has files,
echo re-run with a force push:
echo     git push -u origin main --force
echo.
echo Done.
pause
