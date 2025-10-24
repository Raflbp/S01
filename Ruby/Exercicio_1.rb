# Classe base (Definição Única)
class Drink
  attr_reader :nome

  def initialize(nome, preco_base)
    @_nome = nome
    self.preco_base = preco_base
  end

  def preco_base
    @_preco_base
  end

  def preco_base=(valor)
    raise 'O preço base deve ser positivo!' if valor < 0

    @_preco_base = valor
  end

  def preco_final
    @_preco_base
  end

  def to_s
    "Drink: #{@_nome} | Preço base: $#{@_preco_base}"
  end
end

class DrinkLenda < Drink
  def initialize(nome_usuario, preco_base_drink, anos_desde_criacao)
    super(nome_usuario, preco_base_drink)
    @anos_desde_criacao = anos_desde_criacao
  end

  def preco_final
    @_preco_base + (5 * @anos_desde_criacao)
  end

  def to_s
    "Drink Lenda: #{@_nome} | Preço final: $#{preco_final} (#{@anos_desde_criacao} anos)"
  end
end

# PROGRAMA PRINCIPAL (Adaptado para refletir o que o initialize espera)

puts 'Digite seu nome :'
# Usamos 'nome_do_drink' para maior clareza, pois é este valor que vai para a classe Drink
nome_usuario = gets.chomp

puts 'Digite o preco base do drink:'
preco = gets.chomp.to_f # Variável 'preco'

puts 'Idade do drink em anos:'
anos_desde_criacao = gets.chomp.to_i

# CRIAÇÃO: usa 'nome_do_drink' (o nome da pessoa, que agora é o nome do drink) e 'preco'
drink = DrinkLenda.new(nome_usuario, preco, anos_desde_criacao)

preco_final_calculado = drink.preco_final

puts "O valor do drink é de R$#{preco_final_calculado}."
