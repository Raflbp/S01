-- Definição das variáveis para o código funcionar
local nome = "João"
local idade = 25

-- Estrutura de controle
if idade >= 18 then
  print(nome .. " é maior de idade.") -- .. operador de concatenação
elseif idade >= 12 then -- Corrigido para categorizar adolescentes
  print(nome .. " é um adolescente.")
else
  print(nome .. " é uma criança.")
end

-- for loop
print("\nContagem regressiva:")
for i = 10, 1, -1 do -- start, end, step
  print(i)
end

-- while loop
local contador = 5
print("\nloop while")
while contador > 0 do -- Corrigido: a condição agora é 'maior que zero'
  print("Contador: ", contador)
  contador = contador - 1
end