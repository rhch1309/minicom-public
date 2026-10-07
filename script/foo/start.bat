@echo off

setlocal
set WWW_ROOT="./foo-website"
set LISTEN_HOST="127.0.0.1"
set LISTEN_PORT=8008

echo "Serving %WWW_ROOT% on http://%LISTEN_HOST%:%LISTEN_PORT% (^C to stop)."

for %%S in (python3 ruby php npx) do (
    where /q %%S && (
        call :serve %%S
        exit /b
    )
)

echo.
echo.
echo ERROR: Foo Server not started
echo.
echo It appears you don't have the required dependencies to start the Foo server.
echo.
echo.
echo 1. Install the Node LTS from https://nodejs.org/
echo.
echo 2. Open a new terminal window
echo.
echo 3. Re-run this script again.
echo.
echo =======================
echo.
exit /b 1

:serve
if /I "%~1"=="python3" ( cd %WWW_ROOT% && python3 -m http.server %LISTEN_PORT% )
if /I "%~1"=="ruby" ( ruby -run -e httpd %WWW_ROOT% -p %LISTEN_PORT% -- -c "CacheDisable on" )
if /I "%~1"=="php" ( php -S "%LISTEN_HOST%:%LISTEN_PORT%" -t %WWW_ROOT% )
if /I "%~1"=="npx" ( npx serve %WWW_ROOT% -l %LISTEN_PORT% )
goto :eof