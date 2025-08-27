-- matris 
local fruta = {"maça","banana","laranja"}
print ("Peimeira fruta", fruta[1])
for i, fruta in ipairs(fruta) do
  print("fruta ".. i ..": " .. fruta)
end

-- struct
local  pessoa = {
  nome = "João",
  profissao = "Engenheiro",
  idade = 30,
}
print(pessoa.nome .. " é " .. pessoa.profissao .. " e tem " .. pessoa.idade )