module Main where

-- Definição do tipo Bebida
data Bebida = Bebida
  { nome  :: String
  , tipo  :: String
  , preco :: Double
  } deriving (Show)

-- Status do pedido
data Status = Aberto | Entregue | Cancelado
  deriving (Show, Eq)

-- Definição do tipo Pedido
data Pedido = Pedido
  { bebidas :: [Bebida]
  , status  :: Status
  } deriving (Show)

---------------------------------------------------------------

-- Função que calcula o valor total do pedido
valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido _ Cancelado) = 0
valorTotalPedido (Pedido lista _) =
  let somaBebidas = sum (map preco lista)
      taxa = 5.0
  in somaBebidas + taxa

---------------------------------------------------------------

-- Função que retorna o nome da primeira bebida
primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _)    = "Nenhuma bebida no pedido."
primeiraBebida (Pedido (b:_) _) = nome b

---------------------------------------------------------------

-- Exemplos
cafe  = Bebida "Café Expresso" "Café" 8.0
cha   = Bebida "Chá Verde"     "Chá"  6.5
suco  = Bebida "Suco de Laranja" "Suco" 10.0

pedido1 = Pedido [cafe, suco] Aberto
pedido2 = Pedido [cha] Cancelado

---------------------------------------------------------------

main :: IO ()
main = do
  putStrLn "Valor do pedido 1:"
  print (valorTotalPedido pedido1)

  putStrLn "Valor do pedido 2:"
  print (valorTotalPedido pedido2)

  putStrLn "Primeira bebida do pedido 1:"
  putStrLn (primeiraBebida pedido1)

  putStrLn "Primeira bebida do pedido 2:"
  putStrLn (primeiraBebida pedido2)
