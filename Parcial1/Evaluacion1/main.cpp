
//  main.cpp
//  ordenamientoGenerico
//
//  Created by Vicente Cubells Nonell on 05/02/15.
//  Copyright (c) 2015 Vicente Cubells Nonell. All rights reserved.
//

#include <iostream>
#include "OrdenamientoGenerico.h"
#include <algorithm>
#include <ostream>

int main(int argc, const char * argv[]) {

    const int n = 10;

    /* Declarar el arreglo */
    int enteros[n];

    /* Establecer la semilla del generador de números aleatorios */
    srand((unsigned int) time(nullptr));

    /* Inicializar el arreglo con números aleatorios */
    std::generate(enteros, enteros+n, [](){return rand() % 100000;});

    /* Mostrar números por pantalla */
    std::copy(enteros, enteros+n, std::ostream_iterator<int>(std::cout, " "));

    std::cout << std::endl;

    /* Ordenar los elementos del arreglo ascendentemente utilizando un método estático de la clase */
    Ordenamiento<int>::insercion(enteros, n, Ordenamiento<int>::desc);

    /* Mostrar números ordenados por pantalla */
    std::copy(enteros, enteros+n, std::ostream_iterator<int>(std::cout, " "));

    std::cout << std::endl << std::endl;

    return 0;
}
