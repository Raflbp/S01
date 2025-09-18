#include <iostream>
using namespace std;

int main() {

    int quantidade;
    float nota, soma = 0;

    cout << "Quantidade de notas: ";
    cin >> quantidade;

    for (int i = 0; i < quantidade; i++) {
        cout << "Digite a nota " << i + 1 << ": ";
        cin >> nota;
        
        //testando se a nnota e menor que 10 e maior que 0
        while (nota < 0 || nota > 10) {
            cout << "Nota inválida! Digite novamente (entre 0 e 10): ";
            cin >> nota;
        }

        soma += nota; 
    }
    
    float media = soma / quantidade;

    cout << "Media = " << media << endl;

    // Verificação de aprovação
    if (media >= 7) {
        cout << "Aluno Aprovado!" << endl;
    } else {
        cout << "Aluno Reprovado!" << endl;
    }

    return 0;
}
