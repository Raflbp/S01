module Main where

-- Tipo Banda
data Banda = Banda
  { nomeBanda  :: String
  , genero     :: String
  , cache      :: Double
  } deriving (Show)

-- Status do Evento
data Status = Ativo | Encerrado | Cancelado
  deriving (Show, Eq)

-- Tipo Evento
data Evento = Evento
  { bandas :: [Banda]
  , status :: Status
  } deriving (Show)

-----------------------------------------------------------

-- Custo total do evento (+20% taxa), mas retorna 0 se cancelado
custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento _ Cancelado) = 0.0
custoTotalEvento (Evento lista _) =
  let total = sum (map cache lista)
      taxa  = total * 0.20
  in total + taxa

-----------------------------------------------------------

-- Nome da primeira banda da noite (abertura)
bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Nenhuma banda cadastrada."
bandaAbertura (Evento (b:_) _) = nomeBanda b

-----------------------------------------------------------

-- Nome da última banda da noite (fechamento)
bandaFechamento :: Evento -> String
bandaFechamento (Evento [] _) = "Nenhuma banda cadastrada."
bandaFechamento (Evento lista _) = nomeBanda (last lista)

-----------------------------------------------------------

-- Exemplos de bandas
rockBand   = Banda "Electric Dragons" "Rock" 5000
metalBand  = Banda "Iron Titan"       "Metal" 6500
indieBand  = Banda "Soft Lights"      "Indie" 3000
popBand    = Banda "StarPop"          "Pop"   8000

-----------------------------------------------------------

-- 3 eventos diferentes
eventoAtivo       = Evento [rockBand, indieBand, popBand] Ativo
eventoEncerrado   = Evento [metalBand, rockBand] Encerrado
eventoCancelado   = Evento [indieBand, popBand] Cancelado

-----------------------------------------------------------

main :: IO ()
main = do
  putStrLn "===== EVENTO ATIVO ====="
  print eventoAtivo
  putStrLn ("Custo total: " ++ show (custoTotalEvento eventoAtivo))
  putStrLn ("Abertura: " ++ bandaAbertura eventoAtivo)
  putStrLn ("Fechamento: " ++ bandaFechamento eventoAtivo)

  putStrLn "\n===== EVENTO ENCERRADO ====="
  print eventoEncerrado
  putStrLn ("Custo total: " ++ show (custoTotalEvento eventoEncerrado))
  putStrLn ("Abertura: " ++ bandaAbertura eventoEncerrado)
  putStrLn ("Fechamento: " ++ bandaFechamento eventoEncerrado)

  putStrLn "\n===== EVENTO CANCELADO ====="
  print eventoCancelado
  putStrLn ("Custo total: " ++ show (custoTotalEvento eventoCancelado))
  putStrLn ("Abertura: " ++ bandaAbertura eventoCancelado)
  putStrLn ("Fechamento: " ++ bandaFechamento eventoCancelado)
