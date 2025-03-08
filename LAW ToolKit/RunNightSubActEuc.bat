@echo off
setlocal

call :CopyFile "Input\#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_Rush_EU1"
call :CopyFile "Input\#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_Brawler_EU1"
call :CopyFile "Input\#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_Beast_EU1"
call :CopyFile "Input\#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_Legend_EU1"
call :CopyFile "Input\#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_Reborn_EU1"
call :CopyFile "Input\#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_EU1"
call :CopyFile "Input\#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_Rush_EU2"
call :CopyFile "Input\#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_Brawler_EU2"
call :CopyFile "Input\#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_Beast_EU2"
call :CopyFile "Input\#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_Legend_EU2"
call :CopyFile "Input\#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_Reborn_EU2"
call :CopyFile "Input\#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_EU2"
call :CopyFile "Input\+#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_Rush_EU1"
call :CopyFile "Input\+#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_Brawler_EU1"
call :CopyFile "Input\+#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_Beast_EU1"
call :CopyFile "Input\+#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_Legend_EU1"
call :CopyFile "Input\+#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_Reborn_EU1"
call :CopyFile "Input\+#ActN_SubEU_01\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_EU1"
call :CopyFile "Input\+#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_Rush_EU2"
call :CopyFile "Input\+#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_Brawler_EU2"
call :CopyFile "Input\+#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_Beast_EU2"
call :CopyFile "Input\+#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_Legend_EU2"
call :CopyFile "Input\+#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_Reborn_EU2"
call :CopyFile "Input\+#ActN_SubEU_02\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_EU2"

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
