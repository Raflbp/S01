use std::io;

fn imprimir_tabuada(numero: i32, limite_inferior: i32, limite_superior: i32) {
    for i in limite_inferior..=limite_superior {
        println!("{} x {} = {}", numero, i, numero * i);
    }
}

fn main() {
    // Número da tabuada
    println!("Digite o número da tabuada:");
    let mut entrada_numero = String::new();
    io::stdin()
        .read_line(&mut entrada_numero)
        .expect("Erro ao ler entrada");
    let numero: i32 = entrada_numero.trim().parse().expect("Digite um número válido");

    // Limite inferior
    println!("Digite o limite inferior:");
    let mut entrada_inferior = String::new();
    io::stdin()
        .read_line(&mut entrada_inferior)
        .expect("Erro ao ler entrada");
    let limite_inferior: i32 = entrada_inferior.trim().parse().expect("Digite um número válido");

    // Limite superior
    println!("Digite o limite superior:");
    let mut entrada_superior = String::new();
    io::stdin()
        .read_line(&mut entrada_superior)
        .expect("Erro ao ler entrada");
    let limite_superior: i32 = entrada_superior.trim().parse().expect("Digite um número válido");

    // Chamada da função
    println!("\nTabuada do {} de {} até {}:", numero, limite_inferior, limite_superior);
    imprimir_tabuada(numero, limite_inferior, limite_superior);
}
