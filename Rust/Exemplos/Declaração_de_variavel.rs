fn main() {
  // Declaração de variáveis com inferência de tipo
  let numero_inteiro = 10; // Rust infere i32
  let numero_flutuante = 20.5; // Rust infere f64

  let salario: f32 = 1500.50; // Declaração explícita do tipo f32
  let quantidade: u32 = 100; // Inteiro sem sinal de 32 bits

  println!("Número inteiro: {}", numero_inteiro);
  println!("Número flutuante: {}", numero_flutuante);
  println!("Salário: {}", salario);
  println!("Quantidade: {}", quantidade);

}