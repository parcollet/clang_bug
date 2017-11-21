#include <string>
std::string fake();

int f() {
  { 
       std::string err = " ";
       err = fake(); 
  }
 return 0;

}


