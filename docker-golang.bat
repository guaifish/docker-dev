@echo off

docker run -td ^
    --name golang-%1 ^
    -v %cd%/%1:/app ^
    -v golang:/go ^
    -v containers-root:/root ^
    -w /app ^
    guaifish/goproxy:1.15
