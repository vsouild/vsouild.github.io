@echo off 
cd bin
:start
set n=
echo ��MySQL for Windows��
echo 1.����        a.��װ����
echo 2.�ر�        b.��������
echo 3.��¼        c.�رշ���
echo i.��ʼ��      d.ж�ط���
echo n.�˳�        e.��������
set /p n=���������
if "%n%"=="" call&cls :start 
if "%n%"=="1" call :1 
if "%n%"=="2" call :2 
if "%n%"=="3" call :3 
if "%n%"=="i" call :i
if "%n%"=="a" call :a
if "%n%"=="b" call :b
if "%n%"=="c" call :c
if "%n%"=="d" call :d
if "%n%"=="e" call :e
if /i "%n%"=="n" exit 
goto :start 

:1 
mysqld
goto :start 
:2 
mysqladmin -u root -p shutdown
goto :start 
:3 
mysql -u root -p
goto :start 
:i
mysqld --initialize
goto :start 
:a
mysqld --install-manual
goto :start
:b
net start MySQL
goto :start 
:c
net stop MySQL
goto :start 
:d
sc delete MySQL
goto :start 
:e
net stop MySQL
net start MySQL
goto :start 