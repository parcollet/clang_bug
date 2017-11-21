g++-7 -std=c++17 -O3 -fPIC  -shared -o libbug1.so bug1.cpp
g++-7 -std=c++17 -O3 -fPIC  -shared -o mod.so mod.cxx -lbug1 -L./ -I/usr/include/python2.7/ -lpython2.7
g++-7 -std=c++17 -O3 -fPIC  -shared -o mod2.so mod2.cxx -lbug1 -L./ -I/usr/include/python2.7/ -lpython2.7 
