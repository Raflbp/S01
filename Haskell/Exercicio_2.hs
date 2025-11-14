module Main where

-- Tipo Item
data Item = Item
  { nomeItem     :: String
  , categoriaItem :: String
  , precoItem    :: Double
  } deriving (Show)

-- Tipo CompraZelda
data CompraZelda = CompraZelda
  { itens :: [Item]
  } deriving (Show)

------------------------------------------------------

-- Função que calcula 10% de desconto se total > 200
calculaDesconto :: [Item] -> Double
calculaDesconto lista =
  let total = sum (map precoItem lista)
  in if total > 200
        then total * 0.10
        else 0.0

------------------------------------------------------

-- Função valorFinal usando guards
valorFinal :: CompraZelda -> Double
valorFinal (CompraZelda lista)
  | totalSemDesc > 200 = totalSemDesc - desconto
  | otherwise          = totalSemDesc + frete
  where
    totalSemDesc = sum (map precoItem lista)
    desconto     = calculaDesconto lista
    frete        = 15.0

------------------------------------------------------

-- Exemplos de itens
masterSword  = Item "Master Sword"  "Arma"        150.0
hylianShield = Item "Hylian Shield" "Equipamento" 120.0
pocaoVida    = Item "Poção de Vida" "Poção"        30.0
flechas      = Item "Flechas"       "Arma"         25.0

-- Exemplos de compras
compra1 = CompraZelda [masterSword, hylianShield]   -- total 270 -> aplica desconto
compra2 = CompraZelda [pocaoVida, flechas]          -- total 55 -> adiciona frete

------------------------------------------------------

main :: IO ()
main = do
  putStrLn "---- Compra 1 ----"
  print compra1
  putStrLn ("Valor final: " ++ show (valorFinal compra1))

  putStrLn "\n---- Compra 2 ----"
  print compra2
  putStrLn ("Valor final: " ++ show (valorFinal compra2))
