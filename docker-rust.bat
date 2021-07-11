@echo off

for %%i in (.) do set dir=%%~ni

if %1 == . (
    set workdir=/app/%dir%
) else (
    set workdir=/app
)

docker run -td ^
    --name %dir% ^
    -v %cd%:%workdir% ^
    -v cargo:/usr/local/cargo ^
    -v containers-root:/root ^
    -w %workdir% ^
    rust
