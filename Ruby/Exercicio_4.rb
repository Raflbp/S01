# 1. Crie o módulo Rastreavel e o módulo Perigoso
module Rastreavel
  # Método para obter a localização, que será um atributo de instância
  def obter_localizacao(hora)
    # Ignoramos a hora no corpo, apenas usamos o argumento
    @localizacao_atual
  end
end

module Perigoso
  # Método para calcular o risco
  def calcular_risco
    # Este método deve ser implementado pela classe que o inclui
    # e deve retornar um valor que a seleção possa usar para filtrar (ex: true/false)
    false # Padrão, pode ser sobrescrito
  end
end

# 2. Crie a classe base Participante
class Participante
  attr_reader :nome, :localizacao_atual

  def initialize(nome, localizacao_atual = "Desconhecida")
    @nome = nome
    @localizacao_atual = localizacao_atual
  end

  # Um método simples para representação
  def to_s
    "#{@nome} (Localização: #{@localizacao_atual})"
  end
end

# 3. Crie as classes Detetive e MestreDoCrime
class Detetive < Participante
  # Detetive é Rastreável
  include Rastreavel

  def initialize(nome, localizacao_atual)
    super(nome, localizacao_atual)
  end
end

class MestreDoCrime < Participante
  # Mestre do Crime é Rastreável e Perigoso
  include Rastreavel
  include Perigoso

  def initialize(nome, localizacao_atual)
    super(nome, localizacao_atual)
  end

  # Implementação correta do método do módulo Perigoso
  def calcular_risco
    # Mestre do Crime é o alvo perigoso
    true
  end
end

# 4. Crie a classe Cenario
class Cenario
  # Atributo para agregar a lista polimórfica de participantes
  attr_reader :participantes

  def initialize
    @participantes = []
  end

  def adicionar_participante(participante)
    @participantes << participante
  end

  # Implemente o método identificar_ameacas
  def identificar_ameacas
    # Usa .select combinado com respond_to?(:calcular_risco) para polimorfismo
    # e executa o método para filtrar e retornar APENAS os criminosos (que retornam true)
    ameacas = @participantes.select do |participante|
      participante.respond_to?(:calcular_risco) && participante.calcular_risco
    end
    ameacas
  end
end

# 5. No main:
if __FILE__ == $0
  puts "--- EXERCÍCIO 4: Jogo das Sombras ---"

  # Coleta de localização com gets.chomp
  print "Digite a localização atual de Sherlock (Detetive): "
  sherlock_localizacao = gets.chomp

  print "Digite a localização atual de Moriarty (Mestre do Crime): "
  moriarty_localizacao = gets.chomp

  # Criação das instâncias
  sherlock = Detetive.new("Sherlock Holmes", sherlock_localizacao)
  moriarty = MestreDoCrime.new("Professor Moriarty", moriarty_localizacao)
  john = Detetive.new("John Watson", "Rua Baker 221B")
  civil = Participante.new("Civil Inocente", "Praça Central")

  # Cria o objeto Cenario e adiciona todos os participantes
  cenario = Cenario.new
  cenario.adicionar_participante(sherlock)
  cenario.adicionar_participante(moriarty)
  cenario.adicionar_participante(john)
  cenario.adicionar_participante(civil)


  puts "\n--- Status e Localização de Exemplo ---"
  puts "#{sherlock.nome} está em: #{sherlock.obter_localizacao('10:00')}"
  puts "#{moriarty.nome} está em: #{moriarty.obter_localizacao('11:00')}"

  # Usa o identificar_ameacas para imprimir a lista de alvos perigosos
  alvos_perigosos = cenario.identificar_ameacas

  puts "\n--- Alvos Perigosos Identificados ---"
  if alvos_perigosos.empty?
    puts "Nenhum alvo perigoso encontrado!"
  else
    alvos_perigosos.each do |alvo|
      puts alvo.to_s
    end
  end
end