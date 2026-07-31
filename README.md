# Projeto de Testes BDD — EBAC-SHOP

![Status](https://img.shields.io/badge/status-concluído-brightgreen)
![BDD](https://img.shields.io/badge/testes-BDD-blue)
![Gherkin](https://img.shields.io/badge/linguagem-Gherkin-23D96C)
![EBAC](https://img.shields.io/badge/formação-EBAC-purple)

Projeto desenvolvido durante a formação em Qualidade de Software da EBAC, com foco na transformação de histórias de usuário e critérios de aceitação em cenários BDD escritos em Gherkin.

O trabalho demonstra minha capacidade de interpretar requisitos, identificar fluxos principais e alternativos e documentar comportamentos de forma clara, testável e preparada para futura automação.

## Objetivo

Converter três histórias de usuário da plataforma fictícia **EBAC-SHOP** em arquivos `.feature`, mantendo uma funcionalidade por arquivo e garantindo a cobertura dos critérios de aceitação fornecidos.

## Competências demonstradas

- Escrita de cenários BDD com Gherkin.
- Interpretação de histórias de usuário e critérios de aceitação.
- Modelagem de fluxos positivos e negativos.
- Uso de `Contexto`, `Cenário` e `Esquema do Cenário`.
- Criação de tabelas de dados e exemplos.
- Organização de artefatos de teste para documentação ou automação.
- Versionamento de projeto com Git e GitHub.

## Funcionalidades cobertas

### Configuração de produto

Valida a seleção obrigatória de cor, tamanho e quantidade, o limite de dez unidades por venda e o retorno da configuração ao estado original por meio do botão **Limpar**.

### Login na plataforma

Contempla o acesso com credenciais válidas e as tentativas de autenticação com usuário ou senha inválidos.

### Cadastro no checkout

Abrange o preenchimento dos dados obrigatórios, a validação do formato de e-mail e as mensagens apresentadas quando campos obrigatórios permanecem vazios.

## Estrutura do projeto

```text
exercicio-gherkin-ebac/
├── features/
│   ├── checkout.feature
│   ├── configurar_produto.feature
│   └── login.feature
└── README.md
```

## Abordagem utilizada

Cada arquivo contém:

- declaração do idioma em português;
- descrição da funcionalidade;
- história de usuário no formato **Como / Quero / Para**;
- contexto compartilhado quando aplicável;
- cenários com passos **Dado / Quando / Então**;
- fluxos alternativos e validações de erro;
- esquemas de cenário com tabelas de exemplos.

Os cenários foram escritos para servir tanto como documentação do comportamento esperado quanto como base para uma futura implementação com ferramentas como Cucumber.

## Arquivos

- [`configurar_produto.feature`](features/configurar_produto.feature)
- [`login.feature`](features/login.feature)
- [`checkout.feature`](features/checkout.feature)

## Sobre o autor

**Gabriel S. da Costa**  
Profissional em formação na área de Qualidade de Software, com interesse em testes manuais, BDD, documentação de requisitos e automação de testes.

Este repositório faz parte do meu portfólio de projetos práticos em QA.
