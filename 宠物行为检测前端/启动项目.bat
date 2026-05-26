@echo off
cd /d "%~dp0"
start "" "http://localhost:5188/"
python -m http.server 5188
pause
