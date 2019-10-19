@ECHO OFF
IF EXIST .\server.jar (
goto map_menu
) ELSE (
goto download_server
)
:download_server
echo 下載中
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/allen0101/allen/master/1.14.4server.zip -OutFile 1.14.4server.zip"
powershell -Command "Expand-Archive -LiteralPath .\1.14.4server.zip -DestinationPath .\ -Forc"
echo 下載完成
goto start
:start
echo 伺服器啟動中
java -jar server.jar nogui
goto map_menu
:map_menu
echo 請輸入數字選擇地圖
echo 1:亡國之戰
echo 2:關閉伺服器
set act=0
set /P act=

if %act%==1 (
echo 1
goto map1
)
if %act%==2 (
echo 2
goto map2
)
cls
echo 請輸入1~5任一數字
goto map_menu
:map1
IF EXIST .\map1.zip (
goto start_map1
) ELSE (
goto download_map1
)
:download_map1
echo 下載中亡國之戰中
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/allen0101/allen/master/map1.zip -OutFile map1.zip"
echo 亡國之戰下載完成
:start_map1
rd /s /q .\world
echo 解壓縮中
powershell -Command "Expand-Archive -LiteralPath .\map1.zip -DestinationPath .\world -Forc"
echo 解壓完成
goto start