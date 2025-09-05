use std::io;

fn eh_par(numero: i32) -> bool {
    numero % 2 == 0
}

fn main() {
    // Jogador 1 escolhe par ou ímpar
    println!("Jogador 1, escolha 'par' ou 'ímpar':");
    let mut escolha = String::new();
    io::stdin()
        .read_line(&mut escolha)
        .expect("Falha ao ler entrada");
    let escolha = escolha.trim().to_lowercase();

    // Jogador 1 escolhe um número
    println!("Jogador 1, digite um número inteiro:");
    let mut entrada1 = String::new();
    io::stdin()
        .read_line(&mut entrada1)
        .expect("Falha ao ler entrada");
    let numero1: i32 = entrada1.trim().parse().expect("Digite um número válido");

    // Jogador 2 escolhe um número
    println!("Jogador 2, digite um número inteiro:");
    let mut entrada2 = String::new();
    io::stdin()
        .read_line(&mut entrada2)
        .expect("Falha ao ler entrada");
    let numero2: i32 = entrada2.trim().parse().expect("Digite um número válido");

    // Soma dos números
    let soma = numero1 + numero2;
    println!("A soma dos números é: {}", soma);

    // Verificação de par ou ímpar
    let resultado_par = eh_par(soma);
    let resultado = if resultado_par { "par" } else { "ímpar" };

    println!("O resultado foi: {}", resultado);

    // Determinar vencedor
    if escolha == resultado {
        println!("Jogador 1 venceu! 🎉");
    } else {
        println!("Jogador 2 venceu! 🎉");
    }
}
