# language: pt

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar o produto de acordo com meu tamanho e gosto e escolher a quantidade
  Para inseri-lo no carrinho

  Contexto:
    Dado que o cliente está na página de um produto disponível

  Cenário: Adicionar produto configurado ao carrinho
    Quando selecionar a cor "Azul"
    E selecionar o tamanho "M"
    E informar a quantidade "1"
    E clicar no botão "Comprar"
    Então o produto deve ser adicionado ao carrinho

  Esquema do Cenário: Impedir a compra sem uma seleção obrigatória
    Quando selecionar a cor "<cor>"
    E selecionar o tamanho "<tamanho>"
    E informar a quantidade "<quantidade>"
    E clicar no botão "Comprar"
    Então o produto não deve ser adicionado ao carrinho
    E o campo "<campo_obrigatorio>" deve ser indicado como obrigatório

    Exemplos:
      | cor             | tamanho         | quantidade    | campo_obrigatorio |
      | não selecionada | M               | 1             | cor               |
      | Azul            | não selecionado | 1             | tamanho           |
      | Azul            | M               | não informada | quantidade        |

  Cenário: Permitir a compra de 10 unidades
    Quando selecionar a cor "Azul"
    E selecionar o tamanho "M"
    E informar a quantidade "10"
    E clicar no botão "Comprar"
    Então o produto deve ser adicionado ao carrinho
    E o carrinho deve apresentar a quantidade "10"

  Cenário: Impedir a compra de mais de 10 unidades
    Quando selecionar a cor "Azul"
    E selecionar o tamanho "M"
    E informar a quantidade "11"
    E clicar no botão "Comprar"
    Então o produto não deve ser adicionado ao carrinho
    E o sistema deve informar que o limite é de 10 unidades por venda

  Cenário: Limpar a configuração do produto
    Dado que o cliente selecionou a cor "Azul"
    E selecionou o tamanho "M"
    E informou a quantidade "5"
    Quando clicar no botão "Limpar"
    Então a seleção de cor deve voltar ao estado original
    E a seleção de tamanho deve voltar ao estado original
    E a quantidade deve voltar ao estado original
