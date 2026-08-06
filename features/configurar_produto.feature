# language: pt

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que o cliente está na página de um produto disponível

  Esquema do Cenário: Validar seleção de produtos
    Quando selecionar a cor <cor>, tamanho <tamanho> e quantidade <quantidade> e clicar em "Adicionar ao carrinho"
    Então o sistema deve exibir a mensagem <mensagem>

    Exemplos:
      | cor  | tamanho | quantidade | mensagem                         |
      | Azul | M       | 1          | "Produto adicionado com sucesso" |
      |      | M       | 1          | "Selecione uma cor"              |
      | Azul |         | 1          | "Selecione um tamanho"           |
      | Azul | M       |            | "Selecione a quantidade"         |
      |      |         |            | "Selecione o produto"            |

  Cenário: Permitir a compra de até 10 unidades
    Quando preencher o campo de quantidade com "10"
    E clicar em "Adicionar ao carrinho"
    Então o produto deve ser adicionado ao carrinho

  Cenário: Impedir a compra de mais de 10 unidades
    Quando preencher o campo de quantidade com "11"
    E clicar em "Adicionar ao carrinho"
    Então o sistema deve impedir a inclusão do produto no carrinho
    E exibir a mensagem "O limite permitido é de 10 unidades por venda"

  Cenário: Limpar a configuração do produto
    Dado que o produto esteja configurado
    Quando clicar no botão "Limpar"
    Então os campos devem retornar à configuração inicial
