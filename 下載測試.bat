@ECHO OFF
IF EXIST .\server.jar (
goto map_menu
) ELSE (
goto download_server
)
:download_server
echo �U����
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/allen0101/allen/master/1.14.4server.zip -OutFile 1.14.4server.zip"
powershell -Command "Expand-Archive -LiteralPath .\1.14.4server.zip -DestinationPath .\ -Forc"
echo �U������
goto start
:start
echo ���A���Ұʤ�
java -jar server.jar nogui
goto map_menu
:map_menu
echo �п�J�Ʀr��ܦa��
echo 1:�`�ꤧ��
echo 2:�������A��
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
echo �п�J1~5���@�Ʀr
goto map_menu
:map1
IF EXIST .\map1.zip (
goto start_map1
) ELSE (
goto download_map1
)
:download_map1
echo �U�����`�ꤧ�Ԥ�
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/allen0101/allen/master/map1.zip -OutFile map1.zip"
echo �`�ꤧ�ԤU������
:start_map1
rd /s /q .\world
echo �����Y��
powershell -Command "Expand-Archive -LiteralPath .\map1.zip -DestinationPath .\world -Forc"
echo ��������
goto start