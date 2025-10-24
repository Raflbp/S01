# Classe base
class Musico
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  # Método abstrato — força as subclasses a implementarem
  def tocar_partitura(peca)
    raise NotImplementedError, "A subclasse deve implementar este método!"
  end
end

# Subclasse 1
class Pianista < Musico
  def tocar_partitura(peca)
    puts "#{@nome} toca a peça '#{peca}' com paixão ao piano 🎹"
  end
end

# Subclasse 2
class Violinista < Musico
  def tocar_partitura(peca)
    puts "#{@nome} interpreta '#{peca}' com maestria ao violino 🎻"
  end
end

# Classe Maestro
class Maestro
  attr_reader :musicos

  def initialize(musicos)
    @musicos = musicos
  end

  def iniciar_ensaio(peca)
    puts "\n🎶 Iniciando ensaio da peça: '#{peca}' 🎶"
    @musicos.each { |m| m.tocar_partitura(peca) }  # Polimorfismo
  end

  def mudar_foco(estado)
    puts "\nMudando foco para: #{estado}"
    mensagens = @musicos.map { |m| "#{m.nome} agora está #{estado}!" }
    mensagens.each { |msg| puts msg }
  end
end


# Criando músicos
p1 = Pianista.new("Kousei", "Piano")
v1 = Violinista.new("Kaori", "Violino")

# Criando maestro com lista de músicos
maestro = Maestro.new([p1, v1])

# Pegando nome da peça via input
puts "Digite o nome da peça a ser ensaiada:"
peca = gets.chomp

# Execução
maestro.iniciar_ensaio(peca)
maestro.mudar_foco("Concentrado")
