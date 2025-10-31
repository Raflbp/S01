Class banda {

    #menbros;
    #repertorio;

    constructor(nome,MenbrosIniciais = []){
        this.nome = nome;
        this.#menbros = MenbrosIniciais;
        this.#repertorio = new Map();   
    }


    adicionarinstrumentos(MusicoNome, instrumento) {
        const musico = this.#menbros.find(m => m.nome === MusicoNome);
        if (musico) {
            musico.instrumento = instrumento;
            console.log(`[SETUP] ${MusicoNome} agora tem um(a) ${instrumento.nome}.`);
        
        }
    }
}