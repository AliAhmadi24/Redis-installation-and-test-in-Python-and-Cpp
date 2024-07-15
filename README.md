# Redis installation and test in Python and Cpp
# 1. Introduction:::
This is a short intro (you can skip this part): 
First I should thank MH Mokhtarabadi for introducing Redis to me.
As I faced some problems while using and installing Redis, I decided to type and publish this repo.

# 2. Description :
In this repo you can find a short guide to install Redis on CPP and Python. Also, a sample is provided that uses Redis to set a variable in Python and get it in CPP.
Currently only installation guide for ubuntu is provided.

# 3. install redis-server:
sudo apt install redis-server

# 4. Install Redis on CPP:
In CPP you need to install both hiredis and redis-plus-plus.
*************** Attention:  Please insure that only one version of hiredis and redis-plus-plus installed on your system.
## 4.1. First please update your system using following commands:
sudo apt update
sudo apt upgrade

## 4.2. Then it is needed to run the command below to install "g++" and "cmake":
sudo apt install build-essential cmake git

## 4.3. Install hiredis:

### 4.3.1. clone hiredis:
git clone https://github.com/redis/hiredis.git

### 4.3.2. navigate to hiredis directory: 
cd hiredis

### 4.3.3. Build and install hiredis:
make
sudo make install
cd

## 4.4 install redis-plus-plus:

### 4.4.1. clone redis-plus-plus repo: 
git clone https://github.com/sewenew/redis-plus-plus.git

### 4.4.2. navigate to RPP directory:
cd redis-plus-plus

### 4.4.3. Create a build directory and navidate to that:
mkdir -p build
cd build

### 4.4.4. use cmake to generate build files:
cmake .. -DREDIS_PLUS_PLUS_BUILD_STATIC=OFF

### 4.4.5.  build and install RPP:
make
sudo make install

## 4.5. update linker catch:
sudo ldconfig

# 5. install Redis on Python:
pip install redis
