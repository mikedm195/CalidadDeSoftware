#include <iostream>
#include "first.h"

int factorial(int n) {
    if(n < 0) return 0;
    else if(n > 1) return n*factorial(n-1);
    return 1;
}

int main(int argc, char const *argv[]) {
    std::cout << factorial(5) << '\n';    
    return 0;
}
