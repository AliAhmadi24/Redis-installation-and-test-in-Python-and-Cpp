#include <sw/redis++/redis++.h>
#include <iostream>
#include <thread> // Required for std::this_thread::sleep_for
#include <chrono> // Required for std::chrono::milliseconds

using namespace sw::redis;
using std::cout;
using std::endl;

int main() {
    // Create a Redis object : 
    auto redis = Redis("tcp://127.0.0.1:6379");

    // Get the value of the key.testVar;
    auto testVar = redis.get("testVariable");

    //print the value:
    cout <<  *testVar <<endl;
    

    return 0;
}
