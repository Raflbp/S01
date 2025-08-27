-- Função para filtrar e retornar apenas os números pares de uma tabela
function NPares(tabelaOriginal)
    local tabelaPares = {} -- Cria uma nova tabela vazia para armazenar os números pares

    -- Itera sobre cada valor da tabela original
    for _, valor in ipairs(tabelaOriginal) do
        -- Verifica se o número é par
        if valor % 2 == 0 then
            -- Se for par, adiciona-o à nova tabela
            table.insert(tabelaPares, valor)
        end
    end

    return tabelaPares -- Retorna a nova tabela com os pares
end

-- colocar o tamanho da tabela
print("Quantos numeros quer colocar na tabela?")
local n = io.read()
local n_numeros = tonumber(n)
local numeros = {}

print("Digite os numeros a serem inseridos")
-- numeros a serem inseridos na tabela
for i = 1, n_numeros do 
        local numero_digitado = tonumber(io.read())
        table.insert(numeros, numero_digitado)
end

local pares = NPares(numeros)

print("Tabela original: " .. table.concat(numeros, ", "))
print("Tabela com os números pares: " .. table.concat(pares, ", "))