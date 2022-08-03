@echo off 
cd bin
:start
set n=
echo 【MySQL for Windows】
echo 1.启动        a.安装服务
echo 2.关闭        b.启动服务
echo 3.登录        c.关闭服务
echo i.初始化      d.卸载服务
echo n.退出        e.重启服务
set /p n=输入操作：
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