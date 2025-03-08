@echo off
setlocal

set scripts=RunDayAct.bat RunDayBoss.bat RunDaySubActAfr.bat RunDaySubActChn.bat RunDaySubActEuc.bat RunDaySubActMyk.bat RunDaySubActNyc.bat RunDaySubActPtr.bat RunDaySubActSea.bat RunDaySubActSnw.bat

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

