 #language: pt

Funcionalidade: Login na plataforma de roupa
  Como um usuário da plataforma de roupa
  Eu quero fazer login na plataforma
  Para que eu possa acessar minha conta e fazer compras

Cenário: Login com sucesso
    Dado que eu estou na página de login
    Quando eu insiro meu nome de usuário "Fabiano" e minha senha "123456"
     Então deve sugir uma mensagem "sucesso no login"
     
Cenário: Login com falha devido a senha ou usuario incorreta
    Dado que eu estou na página de login
    Quando eu insiro meu nome de usuário "Fabiano" e minha senha "124578"
    E eu clico no botão de login
    Então eu devo ver uma mensagem de erro "Usuário ou senha incorretos"

    
 
