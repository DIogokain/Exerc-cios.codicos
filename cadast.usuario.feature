#language: pt

Funcionalidade: cadastro de novos usuários
estou querendo me cadastrar em um site 
para poder acessar o conteúdo exclusivo

Contexto:
  Dado que eu tenha acesso à página de cadastro do site

Cenário: deve ser cadastrado com todos os dados obrigatórios
  Quando eu preencher o campo "nome" com "fabiano"
  Então deve surgir uma mensagem de sucesso "Cadastro realizado com sucesso"

Cenário: não deve ser cadastrado com email inválido
  Quando eu preencher o campo "email" com "fabiano@gaid"
    Então deve surgir uma mensagem de alerta "email inválido"

Cenário: ao tentar cadastrar com os campos obrigatórios em branco
  Quando eu preencher o campo "nome" com ""
    Então deve surgir uma mensagem de alerta "Todos os campos são obrigatórios"

Esquema do Cenário: cadastrar múltiplos usuários
  Quando eu preencher o campo <nome>, em seguida o campo <email> e o campo <senha>
  Então deve surgir uma <mensagem>

  Exemplos:
    | nome     | email              | senha      | mensagem                        |
    | "fabiano"| "fabiano@gmail.com" | "123456"  | "Cadastro realizado com sucesso" |
    | "fabiano"   | "fabiano@gaid" | "123456"  | "email inválido"                |
    | ""       | ""           | ""         | "Todos os campos são obrigatórios" | 