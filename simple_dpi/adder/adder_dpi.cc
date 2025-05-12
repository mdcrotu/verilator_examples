// file: adder_dpi.cc
#include "svdpi.h"
#include <iostream>

extern "C" int add(int a, int b) {
  std::cout << "C++: Adding " << a << " and " << b << std::endl;
  return a + b;
}
