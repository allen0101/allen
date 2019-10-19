@ECHO OFF
IF EXIST .\server.jar (
goto map_menu
) ELSE (
goto download_server
)
:download_server
echo 下載中
powershell -Command "Invoke-WebRequest https://evm1xg.dm.files.1drv.com/y4m-yGFEMz3Xa7aB77itcBs8zXsgAZxDg2UI9tv3xiVpCOdhrg7Tf16eDVEyxLpI33nS0Q9RXCYQpzh-2C2lU86JQVLZbj7-pedMY-xf4jLNPQlqKmbZzGzf9f4GxSkKAT783IQzH1p0ZYppfhUxFNWcGgFoXYQWC3HXiKI3Fh4ws13L79Adcgo81lNblhkU_R2--aVT2mOLtby-Uahg422qag6ZQK5HmCNQe0d2sTM0Eg/1.14.4server.zip -OutFile 1.14.4server.zip"
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
powershell -Command "Invoke-WebRequest https://7qwyfg.dm.files.1drv.com/y4mXqIJ3TAyRYewTWFiJOuHfR2yyvV_mE0JPBmFiOppc6emoX86huLix6OdwA9S_RFp_aJyD3zVxb8ioi7ufKypHydxqrQoCaBgP3Lc0XQ9cELf9sVUL8Yb9_SEKuosX-S9m_rME5JtPY7fhwpcOWJmqfqauk7AttZXkPYX8w07WgJpxll8JCXx49C1Hy53C26bT4EuJU0DGGFecqldiVpZX68wjf91pSQ7mmoWmBXPMAg/map1.zip -OutFile map1.zip"
echo 亡國之戰下載完成
:start_map1
rd /s /q .\world
echo 解壓縮中
powershell -Command "Expand-Archive -LiteralPath .\map1.zip -DestinationPath .\world -Forc"
echo 解壓完成
goto start