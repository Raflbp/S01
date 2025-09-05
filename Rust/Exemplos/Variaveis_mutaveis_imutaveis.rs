fn main() {
  let nome = "Joao"; // Variável imutável por padrão
  println!("Nome: {}", nome);

  let mut idade = 18; // Variável mutável
  println!("Idade inicial: {}", idade);
  
  idade = 26; // Podemos alterar
  println!("Nova idade: {}", idade);

  let pi = 3.14159; // Constantes são sempre imutáveis e globais (convenção: UPPERCASE)
  println!("Valor de PI: {}", pi);

}