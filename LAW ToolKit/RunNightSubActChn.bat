@echo off
setlocal

call :CopyFile "Input\#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_Rush_China1"
call :CopyFile "Input\#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_Brawler_China1"
call :CopyFile "Input\#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_Beast_China1"
call :CopyFile "Input\#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_Legend_China1"
call :CopyFile "Input\#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_Reborn_China1"
call :CopyFile "Input\#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_China1"
call :CopyFile "Input\#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_Rush_China2"
call :CopyFile "Input\#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_Brawler_China2"
call :CopyFile "Input\#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_Beast_China2"
call :CopyFile "Input\#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_Legend_China2"
call :CopyFile "Input\#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_Reborn_China2"
call :CopyFile "Input\#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_China2"
call :CopyFile "Input\#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_Rush_China3"
call :CopyFile "Input\#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_Brawler_China3"
call :CopyFile "Input\#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_Beast_China3"
call :CopyFile "Input\#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_Legend_China3"
call :CopyFile "Input\#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_Reborn_China3"
call :CopyFile "Input\#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_China3"
call :CopyFile "Input\+#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_Rush_China1"
call :CopyFile "Input\+#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_Brawler_China1"
call :CopyFile "Input\+#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_Beast_China1"
call :CopyFile "Input\+#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_Legend_China1"
call :CopyFile "Input\+#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_Reborn_China1"
call :CopyFile "Input\+#ActN_SubChina_01\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_China1"
call :CopyFile "Input\+#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_Rush_China2"
call :CopyFile "Input\+#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_Brawler_China2"
call :CopyFile "Input\+#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_Beast_China2"
call :CopyFile "Input\+#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_Legend_China2"
call :CopyFile "Input\+#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_Reborn_China2"
call :CopyFile "Input\+#ActN_SubChina_02\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_China2"
call :CopyFile "Input\+#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_Rush_China3"
call :CopyFile "Input\+#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_Brawler_China3"
call :CopyFile "Input\+#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_Beast_China3"
call :CopyFile "Input\+#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_Legend_China3"
call :CopyFile "Input\+#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_Reborn_China3"
call :CopyFile "Input\+#ActN_SubChina_03\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_China3"

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
