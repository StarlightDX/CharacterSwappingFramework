@echo off
setlocal

call :CopyFile "Input\#BossPhoenix\SceneEffect.prm.xml" "Packing\#Rush_Phoenix"
call :CopyFile "Input\#BossPhoenix\SceneEffect.prm.xml" "Packing\#Brawler_Phoenix"
call :CopyFile "Input\#BossPhoenix\SceneEffect.prm.xml" "Packing\#Beast_Phoenix"
call :CopyFile "Input\#BossPhoenix\SceneEffect.prm.xml" "Packing\#Legend_Phoenix"
call :CopyFile "Input\#BossPhoenix\SceneEffect.prm.xml" "Packing\#Reborn_Phoenix"
call :CopyFile "Input\#BossPhoenix\SceneEffect.prm.xml" "Packing\#HedgehogMayCry_Phoenix"
call :CopyFile "Input\#BossDarkGaiaMoray\SceneEffect.prm.xml" "Packing\#Rush_GaiaMoray"
call :CopyFile "Input\#BossDarkGaiaMoray\SceneEffect.prm.xml" "Packing\#Brawler_GaiaMoray"
call :CopyFile "Input\#BossDarkGaiaMoray\SceneEffect.prm.xml" "Packing\#Beast_GaiaMoray"
call :CopyFile "Input\#BossDarkGaiaMoray\SceneEffect.prm.xml" "Packing\#Legend_GaiaMoray"
call :CopyFile "Input\#BossDarkGaiaMoray\SceneEffect.prm.xml" "Packing\#Reborn_GaiaMoray"
call :CopyFile "Input\#BossPetra\SceneEffect.prm.xml" "Packing\#Rush_PetraBoss"
call :CopyFile "Input\#BossPetra\SceneEffect.prm.xml" "Packing\#Brawler_PetraBoss"
call :CopyFile "Input\#BossPetra\SceneEffect.prm.xml" "Packing\#Beast_PetraBoss"
call :CopyFile "Input\#BossPetra\SceneEffect.prm.xml" "Packing\#Legend_PetraBoss"
call :CopyFile "Input\#BossPetra\SceneEffect.prm.xml" "Packing\#Reborn_PetraBoss"
call :CopyFile "Input\#BossPetra\SceneEffect.prm.xml" "Packing\#HedgehogMayCry_PetraBoss"
call :CopyFile "Input\#BossEggDragoon\SceneEffect.prm.xml" "Packing\#Rush_EggDragoon"
call :CopyFile "Input\#BossEggDragoon\SceneEffect.prm.xml" "Packing\#Brawler_EggDragoon"
call :CopyFile "Input\#BossEggDragoon\SceneEffect.prm.xml" "Packing\#Beast_EggDragoon"
call :CopyFile "Input\#BossEggDragoon\SceneEffect.prm.xml" "Packing\#Legend_EggDragoon"
call :CopyFile "Input\#BossEggDragoon\SceneEffect.prm.xml" "Packing\#Reborn_EggDragoon"
call :CopyFile "Input\#BossEggDragoon\SceneEffect.prm.xml" "Packing\#HedgehogMayCry_EggDragoon"
call :CopyFile "Input\+#BossPhoenix\SceneEffect.prm.xml" "Packing\#Rush_Phoenix"
call :CopyFile "Input\+#BossPhoenix\SceneEffect.prm.xml" "Packing\#Brawler_Phoenix"
call :CopyFile "Input\+#BossPhoenix\SceneEffect.prm.xml" "Packing\#Beast_Phoenix"
call :CopyFile "Input\+#BossPhoenix\SceneEffect.prm.xml" "Packing\#Legend_Phoenix"
call :CopyFile "Input\+#BossPhoenix\SceneEffect.prm.xml" "Packing\#Reborn_Phoenix"
call :CopyFile "Input\+#BossPhoenix\SceneEffect.prm.xml" "Packing\#HedgehogMayCry_Phoenix"
call :CopyFile "Input\+#BossDarkGaiaMoray\SceneEffect.prm.xml" "Packing\#Rush_GaiaMoray"
call :CopyFile "Input\+#BossDarkGaiaMoray\SceneEffect.prm.xml" "Packing\#Brawler_GaiaMoray"
call :CopyFile "Input\+#BossDarkGaiaMoray\SceneEffect.prm.xml" "Packing\#Beast_GaiaMoray"
call :CopyFile "Input\+#BossDarkGaiaMoray\SceneEffect.prm.xml" "Packing\#Legend_GaiaMoray"
call :CopyFile "Input\+#BossDarkGaiaMoray\SceneEffect.prm.xml" "Packing\#Reborn_GaiaMoray"
call :CopyFile "Input\+#BossDarkGaiaMoray\SceneEffect.prm.xml" "Packing\#HedgehogMayCry_GaiaMoray"
call :CopyFile "Input\+#BossPetra\SceneEffect.prm.xml" "Packing\#Rush_PetraBoss"
call :CopyFile "Input\+#BossPetra\SceneEffect.prm.xml" "Packing\#Brawler_PetraBoss"
call :CopyFile "Input\+#BossPetra\SceneEffect.prm.xml" "Packing\#Beast_PetraBoss"
call :CopyFile "Input\+#BossPetra\SceneEffect.prm.xml" "Packing\#Legend_PetraBoss"
call :CopyFile "Input\+#BossPetra\SceneEffect.prm.xml" "Packing\#Reborn_PetraBoss"
call :CopyFile "Input\+#BossPetra\SceneEffect.prm.xml" "Packing\#HedgehogMayCry_PetraBoss"
call :CopyFile "Input\+#BossEggDragoon\SceneEffect.prm.xml" "Packing\#Rush_EggDragoon"
call :CopyFile "Input\+#BossEggDragoon\SceneEffect.prm.xml" "Packing\#Brawler_EggDragoon"
call :CopyFile "Input\+#BossEggDragoon\SceneEffect.prm.xml" "Packing\#Beast_EggDragoon"
call :CopyFile "Input\+#BossEggDragoon\SceneEffect.prm.xml" "Packing\#Legend_EggDragoon"
call :CopyFile "Input\+#BossEggDragoon\SceneEffect.prm.xml" "Packing\#Reborn_EggDragoon"
call :CopyFile "Input\+#BossEggDragoon\SceneEffect.prm.xml" "Packing\#HedgehogMayCry_EggDragoon"

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
