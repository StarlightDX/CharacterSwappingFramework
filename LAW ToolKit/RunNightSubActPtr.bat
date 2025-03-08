@echo off
setlocal

call :CopyFile "Input\#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_Rush_Petra1"
call :CopyFile "Input\#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Petra1"
call :CopyFile "Input\#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_Beast_Petra1"
call :CopyFile "Input\#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_Legend_Petra1"
call :CopyFile "Input\#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Petra1"
call :CopyFile "Input\#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Petra1"
call :CopyFile "Input\#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_Rush_Petra2"
call :CopyFile "Input\#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Petra2"
call :CopyFile "Input\#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_Beast_Petra2"
call :CopyFile "Input\#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_Legend_Petra2"
call :CopyFile "Input\#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Petra2"
call :CopyFile "Input\#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Petra2"
call :CopyFile "Input\+#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_Rush_Petra1"
call :CopyFile "Input\+#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Petra1"
call :CopyFile "Input\+#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_Beast_Petra1"
call :CopyFile "Input\+#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_Legend_Petra1"
call :CopyFile "Input\+#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Petra1"
call :CopyFile "Input\+#ActN_SubPetra_03\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Petra1"
call :CopyFile "Input\+#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_Rush_Petra2"
call :CopyFile "Input\+#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Petra2"
call :CopyFile "Input\+#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_Beast_Petra2"
call :CopyFile "Input\+#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_Legend_Petra2"
call :CopyFile "Input\+#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Petra2"
call :CopyFile "Input\+#ActN_SubPetra_02\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Petra2"

echo All transfers completed!
pause
exit /b

:CopyFile
set "SRC_FILE=%~dp0%~1"
set "DEST_FOLDER=%~dp0%~2"

if not exist "%DEST_FOLDER%" mkdir "%DEST_FOLDER%"

copy "%SRC_FILE%" "%DEST_FOLDER%" >nul

if %errorlevel% equ 0 (
    echo Copied "%SRC_FILE%" to "%DEST_FOLDER%"
) else (
    echo Failed to copy "%SRC_FILE%"!
)
exit /b
