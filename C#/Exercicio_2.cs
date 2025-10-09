using System;
using System.Collections.Generic;

// 1. Classe base
class Pokemon
{
    public string Nome { get; set; }

    public Pokemon(string nome)
    {
        Nome = nome;
    }

    // 2. Método virtual
    public virtual void Atacar()
    {
        Console.WriteLine($"{Nome} usa um ataque generico!");
    }
}

// 3. Classe filha - tipo Fogo
class PokemonDeFogo : Pokemon
{
    public PokemonDeFogo(string nome) : base(nome) { }

    // 4. Sobrescrevendo o método
    public override void Atacar()
    {
        Console.WriteLine($"{Nome} lanca uma rajada de fogo!");
    }
}

// 3. Classe filha - tipo Água
class PokemonDeAgua : Pokemon
{
    public PokemonDeAgua(string nome) : base(nome) { }

    // 4. Sobrescrevendo o método
    public override void Atacar()
    {
        Console.WriteLine($"{Nome} lanca um jato de agua!");
    }
}

class Program
{
    static void Main(string[] args)
    {
        // 5. Lista de Pokémons
        List<Pokemon> pokemons = new List<Pokemon>();

        // 6. Adicionando Charizard e Blastoise
        pokemons.Add(new PokemonDeFogo("Charizard"));
        pokemons.Add(new PokemonDeAgua("Blastoise"));

        // Percorrendo a lista e chamando Atacar()
        foreach (Pokemon p in pokemons)
        {
            p.Atacar();
        }
    }
}
