// C code
#include "svdpi.h"
#include <iostream>

extern "C" int multiply(int a, int b) {
  std::cout << "c++: Multiplying " << a << " and " << b << std::endl;
  return a * b;
}

//extern "c" int add(int a, int b) {
//  std::cout << "c++: adding " << a << " and " << b << std::endl;
//  return a + b;
//}
