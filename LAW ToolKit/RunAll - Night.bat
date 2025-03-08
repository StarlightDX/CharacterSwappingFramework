@echo off
setlocal

set scripts=RunNightAct.bat RunNightBoss.bat RunNightSubActAfr.bat RunNightSubActChn.bat RunNightSubActEuc.bat RunNightSubActMyk.bat RunNightSubActNyc.bat RunNightSubActPtr.bat RunNightSubActSea.bat RunNightSubActSnw.bat

for %%F in (%scripts%) do (
    if exist "%%F" (
        echo Running %%F...
        call "%%F"
        echo.
    ) else (
        echo %%F not found!
    )
)

echo All files transferred to CSF format successfully.
pause

