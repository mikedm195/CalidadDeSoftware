#include <iostream>
#include "Almacen.h"

int main(int argc, char const *argv[]) {
    Almacen * a = new Almacen(10);    
    for(int i = 0;i<10;i++){
        std::cout << a->getValue(i) << '\n';
    }
    return 0;
}
