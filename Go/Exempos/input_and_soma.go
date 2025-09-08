package main

import "fmt"

func somar(a int, b int) int {
	return a + b
}

func main {

	// Entrada de Dados
	var nome2 string
	var idade2 int

	fmt.Print("Digite seu nome: ")
	fmt.Scanln(&nome2) // O '&' é importante para passar a referência da variável

	fmt.Print("Digite sua idade: ")
	fmt.Scanln(&idade2)

	//Definições das funções estão fora da função main
	resultado := somar(10, 20)
	fmt.Println("10 + 20 =", resultado)
}