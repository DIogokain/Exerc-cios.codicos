#language: pt

Funcionalidade: cadastro de novos usuários
estou querendo me cadastrar em um site 
para poder acessar o conteúdo exclusivo

Contexto:
  Dado que eu tenha acesso à página de cadastro do site

Cenário: deve ser cadastrado com todos os dados obrigatórios
  Quando eu preencher o campo "nome" com "João Silva"
  E o campo "email" com "Fabiano@gmail.com"
  E o campo "senha" com "123456"
    E eu clicar no botão "cadastrar"        
    Então deve surgir uma mensagem de sucesso "Cadastro realizado com sucesso"

Cenário: não deve ser cadastrado com email inválido
  Quando eu preencher o campo "nome" com "fabiano"
  E o campo "email" com "fabiano@gnial"
  E o campo "senha" com "123456"
    E eu clicar no botão "cadastrar"
    Então deve surgir uma mensagem de alerta "Email inválido"

Cenário: ao tentar cadastrar com os campos obrigatórios em branco
  Quando eu preencher o campo "nome" com ""
  E o campo "email" com ""
  E o campo "senha" com ""
    E eu clicar no botão "cadastrar"
    Então deve surgir uma mensagem de alerta "Todos os campos são obrigatórios"

Esquema do Cenário: cadastrar múltiplos usuários
  Quando eu preencher o campo "nome" com <nome>
  E o campo "email" com <email>
  E o campo "senha" com <senha>
    E eu clicar no botão "cadastrar"
    Então deve surgir uma mensagem de sucesso <mensagem>

  Exemplos:
    | nome          | email              | senha   | mensagem                     |
    | "fabiano" | "fabiano@gmail.com" | "123456" | "Cadastro realizado com sucesso" |
    | "fabiano"    | "fabiano@gmail" | "123456" | "email invalido" |
    | "fabiano"    | ""                | ""       | "Todos os campos são obrigatórios" |