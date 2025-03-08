@echo off
setlocal

call :CopyFile "Input\#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_Rush_Mykonos1"
call :CopyFile "Input\#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Mykonos1"
call :CopyFile "Input\#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_Beast_Mykonos1"
call :CopyFile "Input\#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_Legend_Mykonos1"
call :CopyFile "Input\#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Mykonos1"
call :CopyFile "Input\#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Mykonos1"
call :CopyFile "Input\#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_Rush_Mykonos2"
call :CopyFile "Input\#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Mykonos2"
call :CopyFile "Input\#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_Beast_Mykonos2"
call :CopyFile "Input\#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_Legend_Mykonos2"
call :CopyFile "Input\#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Mykonos2"
call :CopyFile "Input\#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Mykonos2"
call :CopyFile "Input\#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_Rush_Mykonos3"
call :CopyFile "Input\#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Mykonos3"
call :CopyFile "Input\#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_Beast_Mykonos3"
call :CopyFile "Input\#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_Legend_Mykonos3"
call :CopyFile "Input\#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Mykonos3"
call :CopyFile "Input\#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Mykonos3"
call :CopyFile "Input\+#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_Rush_Mykonos1"
call :CopyFile "Input\+#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Mykonos1"
call :CopyFile "Input\+#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_Beast_Mykonos1"
call :CopyFile "Input\+#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_Legend_Mykonos1"
call :CopyFile "Input\+#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Mykonos1"
call :CopyFile "Input\+#ActN_SubMykonos_03\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Mykonos1"
call :CopyFile "Input\+#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_Rush_Mykonos2"
call :CopyFile "Input\+#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Mykonos2"
call :CopyFile "Input\+#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_Beast_Mykonos2"
call :CopyFile "Input\+#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_Legend_Mykonos2"
call :CopyFile "Input\+#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Mykonos2"
call :CopyFile "Input\+#ActN_SubMykonos_04\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Mykonos2"
call :CopyFile "Input\+#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_Rush_Mykonos3"
call :CopyFile "Input\+#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Mykonos3"
call :CopyFile "Input\+#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_Beast_Mykonos3"
call :CopyFile "Input\+#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_Legend_Mykonos3"
call :CopyFile "Input\+#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Mykonos3"
call :CopyFile "Input\+#ActN_SubMykonos_01\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Mykonos3"

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
