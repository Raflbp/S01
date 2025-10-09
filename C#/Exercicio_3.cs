using System;
using System.Collections.Generic;

// 1. Classe Feitico (Propriedades)
class Feitico
{
    public string Nome { get; set; }
    public string Efeito { get; set; }

    public Feitico(string nome, string efeito)
    {
        Nome = nome;
        Efeito = efeito;
    }
}

// 2. Classe Grimorio (Composição)
class Grimorio
{
    private List<Feitico> feiticos = new List<Feitico>();

    public void AdicionarFeitico(Feitico f)
    {
        feiticos.Add(f);
    }

    public void ListarFeiticos()
    {
        Console.WriteLine("Feiticos no grimorio:");
        foreach (Feitico f in feiticos)
        {
            Console.WriteLine($"- {f.Nome}: {f.Efeito}");
        }
    }
}

// 3. Classe Ferramenta (Agregação)
class Ferramenta
{
    public string Nome { get; set; }

    public Ferramenta(string nome)
    {
        Nome = nome;
    }
}

// 4. Classe Maga (Frieren)
class Maga
{
    public string Nome { get; set; }
    private Grimorio grimorio; // composição
    private List<Ferramenta> ferramentas; // agregação

    public Maga(string nome, List<Ferramenta> ferramentas)
    {
        Nome = nome;
        this.ferramentas = ferramentas;
        grimorio = new Grimorio(); // composição (criado junto com a maga)
    }

    public Grimorio Grimorio => grimorio;
    public List<Ferramenta> Ferramentas => ferramentas;

    public void MostrarFerramentas()
    {
        Console.WriteLine($"{Nome} possui as seguintes ferramentas:");
        foreach (Ferramenta f in ferramentas)
        {
            Console.WriteLine($"- {f.Nome}");
        }
    }
}

// 5. Programa principal
class Program
{
    static void Main(string[] args)
    {
        // Lista de ferramentas (Agregação)
        List<Ferramenta> ferramentas = new List<Ferramenta>()
        {
            new Ferramenta("Cajado Magico"),
            new Ferramenta("Lanterna"),
            new Ferramenta("Capa de Viagem")
        };

        // Criação da maga Frieren com seu grimório e ferramentas
        Maga frieren = new Maga("Frieren", ferramentas);

        // 6. Adicionando feitiços ao grimório
        frieren.Grimorio.AdicionarFeitico(new Feitico("Raio Arcano", "Dispara um feixe mágico de energia"));
        frieren.Grimorio.AdicionarFeitico(new Feitico("Escudo Etereo", "Cria uma barreira protetora"));
        frieren.Grimorio.AdicionarFeitico(new Feitico("Luz Sagrada", "Ilumina areas escuras"));

        // Impressão
        Console.WriteLine($"Maga: {frieren.Nome}\n");
        frieren.Grimorio.ListarFeiticos();
        Console.WriteLine();
        frieren.MostrarFerramentas();
    }
}
