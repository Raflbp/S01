-- Função para encontrar o maior valor em uma tabela
function encontrarMaiorValor(tabela)

local maior = tabela[1] -- Assume que o primeiro elemento é o maior

-- Itera sobre o resto da tabela para encontrar o maior valor
for i = 2, #tabela do
    if tabela[i] > maior then
        maior = tabela[i] -- Atualiza o maior valor se um número maior for encontrado
    end
end
return maior
end

-- Exemplo de uso
print("Quantos numeros quer colocar na tabela?")
local n = io.read()
local n_numeros = tonumber(n)
local numeros = {}


for i = 1, n_numeros do 
        print("Digite o numero " .. i .. ":")
        local numero_digitado = tonumber(io.read())
        table.insert(numeros, numero_digitado)
end

local maiorNumero = encontrarMaiorValor(numeros)

-- Exibe o resultado
print("O maior valor na tabela é: " .. maiorNumero)

