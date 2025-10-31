class musico {
  #experiencia;

  constructor(nome, experiencia = 0) { 
    this.nome = nome;
    this.#experiencia = experiencia; 
  }

  get experiencia() {
    return this.#experiencia;
  }

  ganharExperiencia(valor) {
    if (valor > 0) {
      this.#experiencia += valor; 
      console.log(`${this.nome} ganhou ${valor} pontos de experiência!`);
    }
  }

  executarAcao() {
    return `${this.nome} está executando uma ação musical!`;
  }
} 

class Vocalista extends musico {

  constructor(nome, generoMusical, experiencia = 0) { 
    super(nome, experiencia); 
    
    this.funcao = 'Vocalista';
    this.generoMusical = generoMusical; 
  } 

  executarAcao() {
    
    return `${this.nome} (${this.funcao}) canta ${this.generoMusical}`;
  }
}