using System;

// 1. Classe base abstrata
abstract class MonstroSombrio
{
    public string Nome { get; set; }

    public MonstroSombrio(string nome)
    {
        Nome = nome;
    }

    // Método virtual (ou abstrato) para ser sobrescrito
    public abstract void Mover();
}

// 2. Classe filha: Zumbi
class Zumbi : MonstroSombrio
{
    public Zumbi(string nome) : base(nome) { }

    // 3. Sobrescreve o método Mover
    public override void Mover()
    {
        Console.WriteLine($"{Nome} (Zumbi) se move lentamente, arrastando os pes...");
    }
}

// 2. Classe filha: Espectro
class Espectro : MonstroSombrio
{
    public Espectro(string nome) : base(nome) { }

    // 3. Sobrescreve o método Mover
    public override void Mover()
    {
        Console.WriteLine($"{Nome} (Espectro) desliza rapidamente pelo ar de forma silenciosa!");
    }
}

// 4. Programa principal
class Program
{
    static void Main(string[] args)
    {
        // Array da classe mãe
        MonstroSombrio[] horda = new MonstroSombrio[]
        {
            new Zumbi("Zumbi Lento"),
            new Espectro("Espectro Sombrio"),
            new Zumbi("Zumbi Apodrecido"),
            new Espectro("Espectro Veloz")
        };

        // 5. Percorre o array chamando Mover() para cada monstro
        foreach (MonstroSombrio monstro in horda)
        {
            monstro.Mover();
        }
    }
}
