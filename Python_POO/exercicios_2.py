from abc import ABC, abstractmethod

# Classe base
class Heroi(ABC):
    def __init__(self, nome: str, funcao: str):
        self.nome = nome
        self.funcao = funcao

    @abstractmethod
    def usar_ultimate(self):
        pass


# Classe filha Tanque
class Tanque(Heroi):
    def __init__(self, nome: str):
        super().__init__(nome, "Tanque")

    def usar_ultimate(self):
        print(f"{self.nome} usa seu escudo gigante para proteger o time!")


# Classe filha Dano
class Dano(Heroi):
    def __init__(self, nome: str):
        super().__init__(nome, "Dano")

    def usar_ultimate(self):
        print(f"{self.nome} dispara uma rajada devastadora contra os inimigos!")


# Programa principal
if __name__ == "__main__":
    herois = [
        Tanque("Reinhardt"),
        Dano("Soldier 76"),
        Dano("Hanzo"),
        Tanque("Orisa")
    ]

    for heroi in herois:
        heroi.usar_ultimate()
