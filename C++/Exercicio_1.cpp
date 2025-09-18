#include <iostream>
using namespace std;

int fibonacci(int n){

	int fibo;

	if(n == 0){
		return 0;
	}else if(n == 1){
		return 1;
	}else{
		fibo = fibonacci(n-1) + fibonacci(n-2);
		return fibo;
	}
}

int main()
{
	int x;

	cout << "Digite um numero: ";

	cin >> x;

	cout << endl << "Resultado igual a: " << fibonacci(x) << endl;
	
	return 0;
}