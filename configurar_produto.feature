# language: pt

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que o cliente está na página de um produto disponível

  Cenário: Adicionar produto configurado ao carrinho
    Quando o cliente configurar o produto com a cor "Azul", tamanho "M" e quantidade "1"
    E solicitar a inclusão do produto no carrinho
    Então o produto deve ser adicionado ao carrinho

  Esquema do Cenário: Impedir a compra sem preencher uma seleção obrigatória
    Quando o cliente solicitar a inclusão no carrinho de um produto configurado com cor <cor>, tamanho <tamanho> e quantidade <quantidade>, deixando um campo obrigatório sem preenchimento
    Então o sistema deve impedir a inclusão do produto no carrinho, indicando que o campo <campo_obrigatorio> é obrigatório

    Exemplos:
      | cor             | tamanho         | quantidade    | campo_obrigatorio |
      | não selecionada | M               | 1             | cor               |
      | Azul            | não selecionado | 1             | tamanho           |
      | Azul            | M               | não informada | quantidade        |

  Cenário: Permitir a compra de até 10 unidades
    Quando o cliente configurar o produto com a cor "Azul", tamanho "M" e quantidade "10"
    E solicitar a inclusão do produto no carrinho
    Então o produto deve ser adicionado ao carrinho

  Cenário: Impedir a compra de mais de 10 unidades
    Quando o cliente solicitar a inclusão no carrinho de um produto configurado com a cor "Azul", tamanho "M" e quantidade "11"
    Então o sistema deve impedir a inclusão do produto no carrinho, informando que o limite permitido é de 10 unidades por venda

  Cenário: Limpar a configuração do produto
    Dado que o cliente configurou o produto com a cor "Azul", tamanho "M" e quantidade "5"
    Quando solicitar a limpeza da configuração
    Então o produto deve retornar à configuração inicial
