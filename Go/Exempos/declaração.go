package main

import ("fmt")

func main() {
//Variáveis
	// Declaração completa
	var nome string = "Maria"
	fmt.Println("Nome:", nome)

	// Inferência de tipo (short variable declaration)
	idade := 30
	fmt.Println("Idade:", idade)

	// Declaração de múltiplas variáveis
	var a, b int = 10, 20
	fmt.Println("a e b:", a, b)


	//Tipagem Estática
	var numero int = 42
	var preco float64 = 99.99
	var ehAtivo bool = true
	var mensagem string = "Aprendendo Go"

	fmt.Println("Número:", numero)
	fmt.Println("Preço:", preco)
	fmt.Println("Status:", ehAtivo)
	fmt.Println("Mensagem:", mensagem)
	}