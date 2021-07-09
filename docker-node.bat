@echo off

docker run -td ^
    --name node-%1 ^
    -v %cd%/%1:/app ^
    -v node-env-%1:./node_modules ^
    -v node_modules:/usr/local/lib/node_modules ^
    -v containers-root:/root ^
    -w /app ^
    node:14
