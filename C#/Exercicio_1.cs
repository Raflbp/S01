using System;

class MembroDaSociedade
{
    // 1. Atributos privados
    private string nome;
    private string raca;
    private string funcao;

    // 2. Construtor que inicializa os atributos
    public MembroDaSociedade(string nome, string raca, string funcao)
    {
        this.nome = nome;
        this.raca = raca;
        this.funcao = funcao;
    }

    // 3. Método Descrever
    public void Descrever()
    {
        Console.WriteLine($"Nome: {nome}");
        Console.WriteLine($"Raça: {raca}");
        Console.WriteLine($"Função: {funcao}");
        Console.WriteLine("------------------------");
    }
}

class Program
{
    static void Main(string[] args)
    {
        // 4. Instâncias conforme pedido
        MembroDaSociedade aragorn = new MembroDaSociedade("Aragorn", "Humano", "Guardião");
        MembroDaSociedade legolas = new MembroDaSociedade("Legolas", "Elfo", "Arqueiro");

        // 5. Chamada do método Descrever()
        aragorn.Descrever();
        legolas.Descrever();
    }
}
