@echo off
 
for /f "tokens=1-3 delims=," %%a in (users.txt) do (
    net user "%%a" %%b /add
    echo Byl vytvořen uživatel "%%a"
 
    net localgroup "%%c" /add
    echo Byla vytvořena skupina "%%c"
 
    net localgroup "%%c" "%%a" /add
    echo Uživatel %%a byl přidán do skupiny %%c
)