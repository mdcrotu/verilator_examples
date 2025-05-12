// file: adder_dpi.cc
#include "svdpi.h"
#include <iostream>

#ifdef __cplusplus
extern "C" {
#endif

int add(int a, int b) {
  std::cout << "C++: Adding " << a << " and " << b << std::endl;
  return a + b;
}
  
#ifdef __cplusplus
}
#endif
