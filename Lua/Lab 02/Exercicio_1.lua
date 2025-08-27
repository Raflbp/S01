-- 1. Solicita os números M e N
io.write("Digite o valor de M e de N: ")
local M = tonumber(io.read())
local N = tonumber(io.read())

-- 2. Solicita o número X
io.write("Digite o valor de X para encontrar os múltiplos: ")
local X = tonumber(io.read())

-- 3. Encontra e exibe os múltiplos no intervalo
print("Múltiplos de " .. X .. " no intervalo de " .. M .. " a " .. N .. ":")

for i = M, N do
    if i % X == 0 then
        print(i)
    end
end