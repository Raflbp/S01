package main

import ("fmt")

func main() {
		//Estruturas de Repetição
	// for como um loop for tradicional
	for i := 0; i < 3; i++ {
			fmt.Println("For tradicional:", i)
	}

	// for como um loop while
	contador := 0
	for contador < 3 {
			fmt.Println("For como while:", contador)
			contador++
	}

	// for range (iterando sobre um array)
	numeros := []int{1, 2, 3}
	for i, numero := range numeros {
			fmt.Printf("Índice %d, Valor %d\n", i, numero)
	}
	}