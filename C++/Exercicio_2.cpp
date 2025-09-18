#include <iostream>
using namespace std;

// Função que soma os valores de um array
float somarArray(float arr[], int tamanho) {
    float soma = 0;
    for (int i = 0; i < tamanho; i++) {
        soma += arr[i];
    }
    return soma;
}

int main() {

    int tamanho;
    cin >> tamanho;
    float arr[tamanho]; 

    cout << "Digite os valores do array:\n";
    for (int i = 0; i < tamanho; i++) {
        cin >> arr[i];
    }

   
    float resultado = somarArray(arr, tamanho);
    cout << "A soma dos elementos do array: " << resultado << endl;

    return 0;
}
