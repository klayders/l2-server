@echo off

set PATH="C:\Program Files (x86)\MySQL\MySQL Server 5.1\bin"

set USER=root
set PASS=1234
set DBNAME=l2_interlude
set DBHOST=localhost

mysql -h %DBHOST% -u %USER% --password=%PASS% -Bse "use %DBNAME%" > nul 2>&1

if errorlevel 9009 goto notfound
if errorlevel 1 goto error
goto end

:error
echo Can't use %DBNAME%!
exit /b 1

:notfound
echo Can't find mysql binary!
exit /b 1

:END