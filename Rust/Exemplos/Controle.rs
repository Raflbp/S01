fn main() {
  let idade = 18;

  // if/else
  if idade >= 18 {
      println!("Maior de idade.");
  } else {
      println!("Menor de idade.");
  }

  // match (poderoso para múltiplos casos)
  let status_clima = "ensolarado";
  match status_clima {
      "ensolarado" => println!("Ótimo dia para passear!"),
      "chuvoso" => println!("Leve o guarda-chuva!"),
      "nublado" => println!("Pode esfriar um pouco."),
      _ => println!("Clima desconhecido."), // Coringa para outros casos
  }

}