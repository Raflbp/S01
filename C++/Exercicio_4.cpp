#include <iostream>
using namespace std;

// Função que converte Celsius para Fahrenheit
double C_F(double C) {
    return (C * 9.0 / 5.0) + 32.0;
}

// Função que converte Celsius para Kelvin
double C_K(double C) {
    return C + 273.15;
}

int main(){

    int opcao;
    double C;

    do {

        // Menu de opções
        cout << "1. Celsius para Fahrenheit" << endl;
        cout << "2. Celsius para Kelvin" << endl;
        cout << "3. Sair" << endl;
        cin >> opcao;

        if(opcao == 1){
                cin >> C;
                cout << C_F(C) << " F" << endl;
        }
        else if(opcao == 2){
                cin >> C;
                cout << C_K(C) << " K" << endl;
            }
        else if(opcao == 3){
                cout << "Saindo do programa" << endl;
        }
        else
                cout << "Opcao invalida" << endl;

    } while (opcao != 3);

    return 0;
}
