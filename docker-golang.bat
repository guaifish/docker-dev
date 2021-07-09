@echo off

if %1 == . (
    for %%i in (.) do set dir=%%~ni
    set container_name=golang-%dir%
    set volume_path=%cd%
) else (
    set container_name=golang-%1
    set volume_path=%cd%/%1
)

docker run -td ^
    --name %container_name% ^
    -v %volume_path%:/app ^
    -v golang:/go ^
    -v containers-root:/root ^
    -w /app ^
    golang:1.15
