package main

import ("fmt")

// Função que gera a sequência de Fibonacci até n termos
func fibonacci(n int) []int {
	seq := make([]int, n)

	if n > 0 {
		seq[0] = 0
	}
	if n > 1 {
		seq[1] = 1
	}

	for i := 2; i < n; i++ {
		seq[i] = seq[i-1] + seq[i-2]
	}

	return seq
}

func main() {

	var n int
	
	//entrada do usuario
	fmt.Print("Quantos números da sequência de Fibonacci ? ")
	fmt.Scan(&n)

	//chama a funcao e a saida da sequencia
	sequencia := fibonacci(n)
	fmt.Println("Fibonacci:", sequencia)
}
