@echo off

docker pull %1

docker run --rm -td --name %1-container %1

docker export %1-container > %1.tar

docker stop %1-container

wsl --import %3 %2 %1.tar

del %1.tar
