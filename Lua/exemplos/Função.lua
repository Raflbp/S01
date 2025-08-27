--funções void
function cumprimentar(nomePessoa)
  print("Ola, " .. nomePessoa .. "!")
end
    cumprimentar("Rafael")

--função
function dobrar(numero)
  return numero * 2
end

local result = dobrar(5)
print("O dobro de 5 é " .. result)