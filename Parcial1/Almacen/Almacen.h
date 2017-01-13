#include <iostream>
#include <list>

class Almacen
{
public:
    Almacen(int n){
        std::list<int> lista(n,0);
        capacity = 10;
    }
    void add(int val, bool principio){
        if(principio)
            lista.push_front(val);
        else
            lista.push_back(val);
    }

    void borrar(int pos){
        std::list<int>::iterator it1;
        it1 = lista.begin();
        advance (it1,pos);
        lista.erase (it1);
    }

    int getCapacity(){
        return capacity;
    }

    int getValue(int pos){
        std::list<int>::iterator it1;
        it1 = lista.begin();
        advance (it1,pos);
        return *it1;
    }

    bool empty(){
        return lista.empty();
    }

    int size(){
        return lista.size();
    }
private:
    std::list<int> lista;
    int capacity;
};
