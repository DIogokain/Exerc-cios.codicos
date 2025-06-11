#language: pt

Funcionalidade: configurar produtos
Como consumidor quero escolher meus tamanhos e cores das roupas
Para que eu possa comprar roupas que me sirvam

Contexto:
  Dado que eu tenha acesso a loja de roupas online

Cenário: selecionar tamanho e cor de uma camisa
  Quando eu selecionar o tamanho "M" e a cor "azul"
  Então o produto deve ser adicionado ao carrinho com as especificações corretas

Cenário: permitir apenas 10 por venda
  Quando eu tentar adicionar 11 camisas tamanho "M" e cor "azul" ao carrinho
  Então deve surgir uma mensagem de alerta "Limite de 10 unidades por venda"

 Cenário: quando apertar no botão de limpar
  Quando eu clicar no botão "limpar"
  Então o carrinho deve ser esvaziado

Esquema do Cenário: selecionar múltiplos produtos
  Quando eu selecionar o tamanho <tamanho> e a cor <cor>
  Então o produto deve ser adicionado ao carrinho com as especificações corretas

  Exemplos:
    | tamanho | cor   |
    | "M"     | "azul"|
    | "G"     | "vermelho"|
    | "P"     | "verde"|
    | "GG"    | "preto"|
    