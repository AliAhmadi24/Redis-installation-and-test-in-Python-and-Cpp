#!/bin/bash

# updating system:
echo "to update system"
sudo apt update && sudo apt upgrade -y

# installing redis server:
echo "installing redis-server"
sudo apt install redis-server

# we need some tools such as cmake, g++, etc:
echo "installing build tools like g++":
sudo apt install build-essential cmake git 

# installing hiredis:
if [-d "hiredis"];then
    echo "removing existing hiredis directories ..."
    em -rf hiredis
fi

echo "cloning and building hiredis"

git clone https://github.com/redis/hiredis.git
cd hiredis

make
sudo make install
cd ..


# installing redis-plus-plus:
if [-d "redis-plus-plus"];then
    echo "removing existing redis-plus-plus directories ..."
    em -rf hiredis
fi

echo "cloning and building redis-plus-plus"
git clone https://github.com/sewenew/redis-plus-plus.git
cd redis-plus-plus

mkdir -p build
cd build

echo "cmake for redis-plus-plus"
cmake .. -DREDIS_PLUS_PLUS_BUILD_STATIC=OFF
make
sudo make install

# update linker catch:
sudo ldconfig

# install python redis:
pip install redis


# test installation:
chmod +x ./testRedis.sh
./testRedis.sh