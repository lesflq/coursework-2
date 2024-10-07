#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    std::cout << "3 + 4 = " << calc.Add(3, 4) << std::endl;
    std::cout << "5 - 2 = " << calc.Sub(5, 2) << std::endl;
    return 0;
}
