clang++ -std=c++17 -O1 -g -fPIC  -shared -o libbug1.so bug1.cpp
clang++ -std=c++17 -O1 -g -fPIC  -shared -o mod.so mod.cxx -lbug1 -L./ -I/usr/include/python2.7/ -lpython2.7
clang++ -std=c++17 -O1 -g -fPIC  -shared -o mod2.so mod2.cxx -lbug1 -L./ -I/usr/include/python2.7/ -lpython2.7 


clang++ -std=c++17 -O1 -g -fPIC -shared -o libp1.so p1.cpp -lbug1 -L./ 
clang++ -std=c++17 -O1 -g -fPIC -shared -o libp2.so p2.cpp -lbug1 -L./ 
clang++ -std=c++17 -O1 -g bug.cpp -lp1 -lp2 -L./ 
