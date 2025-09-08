package main

import ("fmt")

// Função para verificar login
func verificarLogin(usuario, senha string) bool {
	if usuario == "senha" && senha == "admin" {
		return true
	}
	return false
}

func main() {

	//loop para verificar login
	for {
		var usuario, senha string
		// Entrada de usuario e senha
		fmt.Print("Digite o usuário: ")
		fmt.Scan(&usuario)

		fmt.Print("Digite a senha: ")
		fmt.Scan(&senha)

		//Chama a função para a verificação de login
		if verificarLogin(usuario, senha) {
			fmt.Println("Login bem-sucedido!")
			break
		} else {
			fmt.Println("Usuário ou senha incorretos. Tente novamente.")
		}
	}
}
