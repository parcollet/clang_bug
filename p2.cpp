#include <string>
std::string fake();

int g() {
  { 
       std::string err = " ";
       err = fake(); 
  }
 return 0;

}


