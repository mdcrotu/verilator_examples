// C code
#include "svdpi.h"
#include <iostream>

extern "C" int multiply(int a, int b) {
  long int result;
  std::cout << "c++: Multiplying " << a << " and " << b << std::endl;
  result = a * b;
  std::cout << a << "*" << b << "=" << result << std::endl;
  return result;
}
