@echo off
echo ======================================
echo  Supply Chain Website - Deploy Ready
echo ======================================
echo.
echo Preparing your website for deployment...
echo.

REM Create a deployment folder
if exist "deployment" rmdir /s /q "deployment"
mkdir deployment

REM Copy all necessary files
copy "index.html" "deployment\"
copy "dashboard.html" "deployment\"
copy "admin.html" "deployment\"
copy "README.md" "deployment\"
copy "DEPLOYMENT.md" "deployment\"
copy "ACCESS_CONTROL_GUIDE.md" "deployment\"

REM Copy directories
xcopy "styles" "deployment\styles\" /E /I /Q
xcopy "js" "deployment\js\" /E /I /Q

echo ✓ Files copied to 'deployment' folder
echo.
echo ======================================
echo  DEPLOYMENT OPTIONS:
echo ======================================
echo.
echo 1. NETLIFY DROP (Easiest):
echo    → Go to: netlify.com/drop
echo    → Drag the 'deployment' folder
echo    → Get instant live URL!
echo.
echo 2. VERCEL:
echo    → Go to: vercel.com
echo    → Sign up and create new project
echo    → Upload the 'deployment' folder
echo.
echo 3. GITHUB PAGES:
echo    → Create GitHub repository
echo    → Upload files from 'deployment' folder
echo    → Enable Pages in Settings
echo.
echo ======================================
echo  ACCESS CONTROL ENABLED:
echo ======================================
echo  ✓ Token-based access control active
echo  ✓ Admin panel: yoursite.com/admin.html
echo  ✓ Generate secure links from admin panel
echo  ✓ Users need special URLs to access
echo.
echo  DEMO CREDENTIALS (after getting access):
echo  Username: admin    Password: supply123
echo  Username: manager  Password: chain456
echo ======================================
echo.
echo Your website is ready for deployment!
echo Check the 'deployment' folder.
echo.
pause
