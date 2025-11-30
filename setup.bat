@echo off
REM GitHub Stats API - Quick Setup Script for Windows
REM Author: LOKESH M (@lokeshloki65)

echo.
echo ================================
echo GitHub Stats API - Quick Setup
echo ================================
echo.

REM Check if Node.js is installed
where node >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Node.js is not installed. Please install Node.js first.
    pause
    exit /b 1
)

REM Check if Git is installed
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Git is not installed. Please install Git first.
    pause
    exit /b 1
)

echo [Step 1] Installing dependencies...
echo.
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Failed to install dependencies.
    pause
    exit /b 1
)
echo [SUCCESS] Dependencies installed!
echo.

echo [Step 2] Setting up environment variables...
if not exist .env (
    copy .env.example .env
    echo [WARNING] Please edit .env file and add your GitHub Personal Access Token
    echo           Get your token from: https://github.com/settings/tokens
) else (
    echo [INFO] .env file already exists
)
echo.

echo [Step 3] Git repository setup...
set /p git_setup="Do you want to initialize/update git repository? (y/n): "
if /i "%git_setup%"=="y" (
    if not exist .git (
        git init
        echo [SUCCESS] Git repository initialized
    )
    
    set /p repo_url="Enter your GitHub repository URL (e.g., https://github.com/lokeshloki65/github-stats-api.git): "
    
    if not "%repo_url%"=="" (
        git remote remove origin 2>nul
        git remote add origin %repo_url%
        echo [SUCCESS] Remote repository set to: %repo_url%
    )
)
echo.

echo [Step 4] Vercel deployment...
set /p vercel_deploy="Do you want to deploy to Vercel now? (y/n): "
if /i "%vercel_deploy%"=="y" (
    where vercel >nul 2>&1
    if %ERRORLEVEL% NEQ 0 (
        echo [INFO] Installing Vercel CLI...
        call npm install -g vercel
    )
    
    echo [INFO] Running Vercel deployment...
    call vercel
    
    echo.
    echo [WARNING] Don't forget to add environment variable PAT_1 in Vercel dashboard!
    echo           Go to: https://vercel.com/dashboard - Your Project - Settings - Environment Variables
)

echo.
echo ================================
echo Setup Complete!
echo ================================
echo.
echo Next Steps:
echo 1. Add your GitHub token to .env file (if not done)
echo 2. Set PAT_1 environment variable in Vercel dashboard
echo 3. Test your deployment: https://your-project.vercel.app/api?username=lokeshloki65
echo 4. Add stats to your GitHub profile README
echo.
echo For detailed instructions, see: DEPLOYMENT_GUIDE.md
echo.
echo Happy coding!
echo.
pause
