@echo off
setlocal

call :CopyFile "Input\#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_Rush_Beach1"
call :CopyFile "Input\#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Beach1"
call :CopyFile "Input\#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_Beast_Beach1"
call :CopyFile "Input\#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_Legend_Beach1"
call :CopyFile "Input\#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Beach1"
call :CopyFile "Input\#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Beach1"
call :CopyFile "Input\#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_Rush_Beach2"
call :CopyFile "Input\#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Beach2"
call :CopyFile "Input\#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_Beast_Beach2"
call :CopyFile "Input\#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_Legend_Beach2"
call :CopyFile "Input\#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Beach2"
call :CopyFile "Input\#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Beach2"
call :CopyFile "Input\#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_Rush_Beach3"
call :CopyFile "Input\#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Beach3"
call :CopyFile "Input\#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_Beast_Beach3"
call :CopyFile "Input\#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_Legend_Beach3"
call :CopyFile "Input\#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Beach3"
call :CopyFile "Input\#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Beach3"
call :CopyFile "Input\+#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_Rush_Beach1"
call :CopyFile "Input\+#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Beach1"
call :CopyFile "Input\+#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_Beast_Beach1"
call :CopyFile "Input\+#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_Legend_Beach1"
call :CopyFile "Input\+#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Beach1"
call :CopyFile "Input\+#ActN_SubBeach_03\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Beach1"
call :CopyFile "Input\+#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_Rush_Beach2"
call :CopyFile "Input\+#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Beach2"
call :CopyFile "Input\+#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_Beast_Beach2"
call :CopyFile "Input\+#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_Legend_Beach2"
call :CopyFile "Input\+#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Beach2"
call :CopyFile "Input\+#ActN_SubBeach_01\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Beach2"
call :CopyFile "Input\+#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_Rush_Beach3"
call :CopyFile "Input\+#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_Brawler_Beach3"
call :CopyFile "Input\+#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_Beast_Beach3"
call :CopyFile "Input\+#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_Legend_Beach3"
call :CopyFile "Input\+#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_Reborn_Beach3"
call :CopyFile "Input\+#ActN_SubBeach_02\SceneEffect.prm.xml" "Packing\#Sub_HedgehogMayCry_Beach3"

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
