@echo off

::clean old files
echo ======== Clean old files ========
rmdir /Q /S images styles scripts bower_components
rm .htaccess 404.html favicon.ico index.html robots.txt *.pdf

::copy new generated from master branch
echo ======== Copy new files ========
xcopy dist\*.* . /S /E /Y

