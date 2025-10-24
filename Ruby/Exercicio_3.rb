# Classe de composição
class MicroondasUnidade
  def aquecer_por(tempo)
    puts "Aquecendo por #{tempo} segundos..."
  end
end

# Classe de agregação
class DMail
  attr_reader :conteudo, :hora_envio

  def initialize(conteudo, hora_envio)
    @conteudo = conteudo
    @hora_envio = hora_envio
  end
end

# Classe principal
class TelefoneDeMicroondas
  def initialize
    @unidade = MicroondasUnidade.new
    @d_mails = []
  end

  def enviar_dmail(conteudo, hora_envio)
    @unidade.aquecer_por(5) # tempo fixo
    novo_dmail = DMail.new(conteudo, hora_envio)
    @d_mails << novo_dmail
    puts "D-Mail enviado às #{hora_envio}: #{conteudo}"
  end

  def listar_dmails(horario_corte)
    selecionados = @d_mails.select do |dmail|
      dmail.hora_envio > horario_corte
    end
    puts "\nD-Mails enviados depois de #{horario_corte}:"
    selecionados.each do |dmail|
      puts "- [#{dmail.hora_envio}] #{dmail.conteudo}"
    end
  end
end

# --- Teste ---
telefone = TelefoneDeMicroondas.new
telefone.enviar_dmail("Mensagem 1: teste", "10:30")
telefone.enviar_dmail("Mensagem 2: segunda", "11:45")
telefone.enviar_dmail("Mensagem 3: final", "09:50")

telefone.listar_dmails("10:00")
