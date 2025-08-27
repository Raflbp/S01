-- Função para executar operações matemáticas básicas
function calculadora(num1, num2, operador)
    if operador == "+" then
        return num1 + num2
    elseif operador == "-" then
        return num1 - num2
    elseif operador == "*" then
        return num1 * num2
    elseif operador == "/" then
        -- Verifica se o segundo número não é zero para evitar divisão por zero
        if num2 ~= 0 then
            return num1 / num2
        else
            return "divisão po 0 ?"
        end
    else
        return "Operador invalido"
    end
end

-- definir n para s imitar um do while
local n = 1
while n ~= 0 do
        --inserir valores    
        print("Insira os numeros número")
        local numero0 = tonumber(io.read())
        local numero1 = tonumber(io.read())

        print("insira o operador")
        local operador = io.read()

        local calculo = calculadora(numero0,numero1,operador)
        print ("resultado: " .. calculo)
    
    --fazer outra operação
    print("deseja fazer outra operação ? 1-sim 0-não ")
    n = tonumber(io.read())
end