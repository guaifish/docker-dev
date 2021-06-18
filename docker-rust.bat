@echo off

docker run -td ^
    --name rust-%1 ^
    -v %cd%/%1:/app ^
    -v cargo:/usr/local/cargo ^
    -v containers-root:/root ^
    -w /app ^
    rust:1.53
