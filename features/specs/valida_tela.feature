#language: pt

Funcionalidade: Validar dados na tela

  Cenario: Validar dados do objeto com id = 6
    Dado que estou na página inicial do site JSONPlaceholder
    E clico no link "Guide"
    Quando clico em "/albums/1/photos"
    E capturo os dados exibidos em tela
    Então devo validar os dados do objeto com id = 6

