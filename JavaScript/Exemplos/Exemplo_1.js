class Instrumento {
  constructor(nome) {
    this.nome = nome;
  }
 
  tocar() {
    return `O ${this.nome} está pronto para ser tocado.`;
  }
}

class Guitarra extends Instrumento { 
  constructor(modelo) {
    super('Guitarra');
    this.modelo = modelo;
  }

  tocar() {
    return `Tocando a guitarra modelo ${this.modelo}`; 
  }
}

class Bateria extends Instrumento {
  constructor(marca) {
    super('Bateria');
    this.marca = marca;
  }
  tocar() {
    return `Tocando a bateria da marca ${this.marca}`;
  }
}