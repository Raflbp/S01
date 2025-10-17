# Classe de composicao
class ArmaCorpoACorpo:
    def __init__(self, nome: str, dano: int):
        self.nome = nome
        self.dano = dano

    def __str__(self):
        return f"Arma: {self.nome} (Dano: {self.dano})"


# Classe agregada
class PhantomThieves:
    def __init__(self, nome: str, arma: str):
        self.nome = nome
        self.arma = arma

    def __str__(self):
        return f"Membro: {self.nome} | Arma: {self.arma}"


# Classe principal (composicao + agregacao)
class Joker:
    def __init__(self, nome: str, membros: list):
        # Composicao: Joker cria e gerencia sua propria arma
        self.nome = nome
        self.arma = ArmaCorpoACorpo("Faca", 75)

        # Agregacao: recebe lista de membros externos
        self.membros = membros

    def mostrar_equipe(self):
        print(f"Joker: {self.nome}")
        print(self.arma)
        print("\nEquipe Phantom Thieves:")
        for m in self.membros:
            print("-", m)


# Programa principal
if __name__ == "__main__":
    membro1 = PhantomThieves("Skull", "Taco de beisebol")
    membro2 = PhantomThieves("Panther", "Chicote")
    membro3 = PhantomThieves("Fox", "Katana")

    equipe = [membro1, membro2, membro3]

    joker = Joker("Joker", equipe)
    joker.mostrar_equipe()
