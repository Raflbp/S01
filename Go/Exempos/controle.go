package main

import ("fmt")

func main() {
//Estruturas de Controle
	
	idade := 18

	// if/else
	if idade >= 18 {
			fmt.Println("Maior de idade.")
	} else {
			fmt.Println("Menor de idade.")
	}

	// switch
	dia := "terça"
	switch dia {
	case "segunda":
			fmt.Println("Começo de semana")
	case "terça", "quarta":
			fmt.Println("Meio de semana")
	default:
			fmt.Println("Final de semana")
	

	}