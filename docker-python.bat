@echo off

docker run -td ^
    --name python-%1 ^
    -v %cd%/%1:/app ^
    -v python-env-%1:/usr/local/lib/python3.8/site-packages ^
    -v container_root:/root ^
    -w /app ^
    python:3.8
