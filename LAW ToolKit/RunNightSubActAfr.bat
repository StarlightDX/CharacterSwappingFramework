@echo off
setlocal

call :CopyFile "Input\#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_Rush_Africa1"
call :CopyFile "Input\#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Africa1"
call :CopyFile "Input\#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_Beast_Africa1"
call :CopyFile "Input\#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_Legend_Africa1"
call :CopyFile "Input\#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Africa1"
call :CopyFile "Input\#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Africa1"
call :CopyFile "Input\#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_Rush_Africa2"
call :CopyFile "Input\#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Africa2"
call :CopyFile "Input\#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_Beast_Africa2"
call :CopyFile "Input\#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_Legend_Africa2"
call :CopyFile "Input\#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Africa2"
call :CopyFile "Input\#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Africa2"
call :CopyFile "Input\#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_Rush_Africa3"
call :CopyFile "Input\#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Africa3"
call :CopyFile "Input\#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_Beast_Africa3"
call :CopyFile "Input\#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_Legend_Africa3"
call :CopyFile "Input\#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Africa3"
call :CopyFile "Input\#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Africa3"
call :CopyFile "Input\+#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_Rush_Africa1"
call :CopyFile "Input\+#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Africa1"
call :CopyFile "Input\+#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_Beast_Africa1"
call :CopyFile "Input\+#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_Legend_Africa1"
call :CopyFile "Input\+#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Africa1"
call :CopyFile "Input\+#ActN_SubAfrica_01\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Africa1"
call :CopyFile "Input\+#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_Rush_Africa2"
call :CopyFile "Input\+#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Africa2"
call :CopyFile "Input\+#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_Beast_Africa2"
call :CopyFile "Input\+#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_Legend_Africa2"
call :CopyFile "Input\+#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Africa2"
call :CopyFile "Input\+#ActN_SubAfrica_02\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Africa2"
call :CopyFile "Input\+#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_Rush_Africa3"
call :CopyFile "Input\+#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Africa3"
call :CopyFile "Input\+#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_Beast_Africa3"
call :CopyFile "Input\+#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_Legend_Africa3"
call :CopyFile "Input\+#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Africa3"
call :CopyFile "Input\+#ActN_SubAfrica_03\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Africa3"

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
