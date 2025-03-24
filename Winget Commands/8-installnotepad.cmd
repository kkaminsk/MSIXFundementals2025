@echo off
REM Batch file to install Notepad++ using winget and check for reboot or failure

echo Installing Notepad++ via winget...
REM The -e flag ensures an exact match; the agreement switches bypass interactive prompts
winget install --id Notepad++.Notepad++ -e --accept-package-agreements --accept-source-agreements

REM Check the error code returned by the winget command
if %errorlevel%==0 (
    echo Notepad++ installed successfully.
) else (
    if %errorlevel%==3010 (
        echo Notepad++ installed successfully, but a reboot is required.
    ) else (
        echo Installation failed with error code %errorlevel%.
    )
)

pause