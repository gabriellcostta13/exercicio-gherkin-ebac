# language: pt

Funcionalidade: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que o cliente está na tela de cadastro do checkout

  Cenário: Concluir cadastro com todos os campos obrigatórios
    Quando preencher os campos obrigatórios com os seguintes dados:
      | campo              | valor                   |
      | Nome               | Gabriel                 |
      | Sobrenome          | Costa                   |
      | País               | Brasil                  |
      | Endereço           | Rua de Teste, 100       |
      | Cidade             | Venâncio Aires          |
      | CEP                | 95800-000               |
      | Telefone           | 51999999999             |
      | Endereço de e-mail | cliente@ebacshop.com.br |
    E clicar no botão "Finalizar compra"
    Então o cadastro deve ser concluído com sucesso
    E o cliente deve prosseguir com a finalização da compra

  Esquema do Cenário: Impedir cadastro com formato de e-mail inválido
    Quando preencher todos os campos obrigatórios com dados válidos
    E informar o e-mail "<email>"
    E clicar no botão "Finalizar compra"
    Então o cadastro não deve ser concluído
    E deve ser exibida uma mensagem de erro para o campo e-mail

    Exemplos:
      | email            |
      | cliente          |
      | cliente@         |
      | @ebacshop.com.br |
      | cliente@ebacshop |

  Esquema do Cenário: Impedir cadastro com campo obrigatório vazio
    Quando deixar o campo obrigatório "<campo>" vazio
    E preencher os demais campos obrigatórios com dados válidos
    E clicar no botão "Finalizar compra"
    Então o cadastro não deve ser concluído
    E deve ser exibida uma mensagem de alerta para o campo "<campo>"

    Exemplos:
      | campo              |
      | Nome               |
      | Sobrenome          |
      | País               |
      | Endereço           |
      | Cidade             |
      | CEP                |
      | Telefone           |
      | Endereço de e-mail |