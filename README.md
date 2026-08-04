# Exercício Gherkin - EBAC

## Descrição

Este projeto foi desenvolvido como atividade prática do curso de Qualidade de Software (QA) da EBAC.

O objetivo é transformar critérios de aceitação em cenários escritos em Gherkin (BDD), seguindo boas práticas de escrita, organização e reutilização dos cenários.

## Tecnologias

- Gherkin
- BDD (Behavior Driven Development)
- Visual Studio Code
- Git
- GitHub

## Estrutura do projeto

```text
.
├── configurar_produto.feature
├── login.feature
├── checkout.feature
└── README.md
```

## Funcionalidades

### configurar_produto.feature

Contém cenários relacionados à configuração de produtos antes da compra, incluindo:

- seleção de cor
- seleção de tamanho
- limite de quantidade
- limpeza das configurações
- validações obrigatórias

### login.feature

Contém cenários de autenticação do usuário.

Inclui:

- login válido
- login inválido
- mensagens de erro

### checkout.feature

Contém cenários referentes ao cadastro durante o checkout.

Inclui:

- cadastro válido
- e-mail inválido
- validação de campos obrigatórios

## Boas práticas utilizadas

Os cenários seguem princípios do BDD:

- foco em comportamento
- linguagem declarativa
- redução de comandos imperativos
- uso adequado de Esquema do Cenário
- uso de Exemplos
- reutilização através de Contexto

## Como visualizar

Basta abrir os arquivos `.feature` em um editor compatível com Gherkin, como o Visual Studio Code.

## Autor

Gabriel Costa

Curso QA - EBAC
