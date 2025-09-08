package main

import ("fmt")

//classifica os numeros
func classificar_numero(num int) string {
	if num > 0 {
		return "Positivo"
	} else if num < 0 {
		return "Negativo"
	} else {
		return "Zero"
	}
}

func main() {
	var numero int
	fmt.Print("Digite um número: ")
	fmt.Scan(&numero)

	//chama a funcao e inprime o resultado 
	resultado := classificar_numero(numero)
	fmt.Println("O número é:", resultado)
}
