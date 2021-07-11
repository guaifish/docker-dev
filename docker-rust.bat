@echo off

if %1 == . (
    for %%i in (.) do set dir=%%~ni
    set container_name=%dir%
    set volume_path=%cd%
) else (
    set container_name=%1
    set volume_path=%cd%/%1
)

docker run -td ^
    --name %container_name% ^
    -v %volume_path%:/app/%container_name% ^
    -v cargo:/usr/local/cargo ^
    -v containers-root:/root ^
    -w /app ^
    rust
    cargo init %container_name%
