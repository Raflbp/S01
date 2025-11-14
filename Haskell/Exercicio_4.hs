-- ========================
-- Questão 4 – Casa de Banhos Espiritual
-- ========================

-- Tipo Serviço
data Servico = Servico {
    nomeServico :: String,
    tipoServico :: String,
    precoServico :: Double
} deriving (Show)

-- Status do Atendimento
data Status = EmAndamento | Finalizado | Cancelado
    deriving (Show, Eq)

-- Tipo Atendimento
data Atendimento = Atendimento {
    listaServicos :: [Servico],
    statusAtend :: Status
} deriving (Show)

-- =============================
-- 1. bonusEspiritual :: [Servico] -> Double
-- Regra:
--   - Soma todos os preços
--   - Se houver mais de 3 serviços → bônus de +25%
--   - Se o total passar de 500 → aplica desconto de 10%
-- =============================
bonusEspiritual :: [Servico] -> Double
bonusEspiritual servs =
    let soma = sum (map precoServico servs)
        somaBonus = if length servs > 3 then soma * 1.25 else soma
    in if somaBonus > 500
       then somaBonus * 0.90
       else somaBonus

-- =============================
-- 2. valorFinalAtendimento :: Atendimento -> Double
-- Regras:
--   - Usar guards
--   - Se status = Cancelado → retorna 0
--   - Caso contrário → aplicar bonusEspiritual
-- =============================
valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento at
    | statusAtend at == Cancelado = 0
    | otherwise = bonusEspiritual (listaServicos at)

-- =============================
-- 3. descricaoPrimeiroServico :: Atendimento -> String
-- Retorna nome e tipo do primeiro serviço
-- =============================
descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico (Atendimento [] _) = "Nenhum serviço disponível."
descricaoPrimeiroServico (Atendimento (s:_) _) =
    "Primeiro serviço: " ++ nomeServico s ++ " (" ++ tipoServico s ++ ")"

-- =============================
-- 4. MAIN – demonstrar atendimentos variados
-- =============================
main :: IO ()
main = do
    let s1 = Servico "Banho Revigorante" "Banho" 120
    let s2 = Servico "Massagem Espiritual" "Massagem" 200
    let s3 = Servico "Banquete Divino" "Banquete" 300
    let s4 = Servico "Banho de Ervas" "Banho" 150

    let atendimento1 = Atendimento [s1, s2] EmAndamento
    let atendimento2 = Atendimento [s1, s2, s3, s4] Finalizado
    let atendimento3 = Atendimento [s3, s4] Cancelado

    putStrLn "=== Atendimento 1 ==="
    print (valorFinalAtendimento atendimento1)
    putStrLn (descricaoPrimeiroServico atendimento1)

    putStrLn "\n=== Atendimento 2 ==="
    print (valorFinalAtendimento atendimento2)
    putStrLn (descricaoPrimeiroServico atendimento2)

    putStrLn "\n=== Atendimento 3 ==="
    print (valorFinalAtendimento atendimento3)
    putStrLn (descricaoPrimeiroServico atendimento3)
