# Exercício Gherkin — EBAC-SHOP

Conversão das três histórias de usuário do módulo 8 da EBAC em cenários Gherkin reutilizáveis para documentação e automação de testes.

## Estrutura

```text
features/
├── configurar_produto.feature
├── login.feature
└── checkout.feature
```

## Cobertura dos critérios de aceitação

### US-0001 — Configurar produto

- Cor, tamanho e quantidade obrigatórios: `Impedir a compra sem uma seleção obrigatória`.
- Limite de 10 produtos por venda: `Permitir a compra de 10 unidades` e `Impedir a compra de mais de 10 unidades`.
- Retorno ao estado original: `Limpar a configuração do produto`.

### US-0002 — Login na plataforma

- Dados válidos direcionam ao checkout: `Realizar login com dados válidos`.
- Usuário ou senha inválidos exibem alerta: `Impedir login quando um dos campos for inválido`.

### US-0003 — Cadastro no checkout

- Campos obrigatórios marcados com asterisco: `Identificar os campos obrigatórios do cadastro`.
- Cadastro com todos os dados obrigatórios: `Concluir cadastro com todos os campos obrigatórios`.
- Rejeição de e-mail em formato inválido: `Impedir cadastro com formato de e-mail inválido`.
- Alerta para campos obrigatórios vazios: `Impedir cadastro com campo obrigatório vazio`.

## Validação

Os arquivos utilizam Gherkin em português (`# language: pt`), mantêm uma funcionalidade por arquivo e incluem cenários, contextos, esquemas de cenário e tabelas de exemplos. Cada critério de aceitação do documento original está associado a pelo menos um cenário testável.
