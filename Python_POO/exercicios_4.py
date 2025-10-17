from abc import ABC, abstractmethod

# Interface base
class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass


# Classe de composicao
class Implante:
    def __init__(self, funcao: str, custo: int):
        self.funcao = funcao
        self.custo = custo

    def __str__(self):
        return f"Implante: {self.funcao} (Custo: {self.custo})"


# Classe que herda da interface
class NetRunner(Cibernetico):
    def __init__(self, nome: str, funcao_implante: str, custo_implante: int):
        self.nome = nome
        # Composicao: o NetRunner cria e controla o proprio implante
        self.implante = Implante(funcao_implante, custo_implante)

    def realizar_hack(self):
        print(f"{self.nome} esta realizando um hack usando o {self.implante.funcao}!")


# Classe de agregacao
class Faccao:
    def __init__(self, nome: str, membros: list):
        self.nome = nome
        self.membros = membros  # lista de objetos do tipo Cibernetico

    def executar_hacks(self):
        print(f"\nFacccao {self.nome} iniciando operacao de hack:")
        for membro in self.membros:
            membro.realizar_hack()


# Programa principal
if __name__ == "__main__":
    # Criando NetRunners
    n1 = NetRunner("V", "Implante Neural de Invasao", 5000)
    n2 = NetRunner("Lucy", "Interface de Rede Fantasma", 8000)
    n3 = NetRunner("T-Bug", "Chip de Controle de Sistema", 6500)

    # Criando faccao com agregacao
    equipe = [n1, n2, n3]
    faccao = Faccao("NetWatch", equipe)

    # Executando hacks
    faccao.executar_hacks()
