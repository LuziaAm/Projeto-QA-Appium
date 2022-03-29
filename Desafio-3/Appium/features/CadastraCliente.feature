Feature: Cadastrar cliente

    
    Background:
        Given que eu acesso o sistema como funcionário

    @abrir
    Scenario: Abrir tela de cadastro de um novo cliente
        When eu clicar no botão adicionar
            And clicar no botão Cadastrar Novo
        Then o formulário de cadastro é exibido

    @positivo
    Scenario: Preencher campos para cadastrar um novo cliente
        When eu informar os campos
            And clicar no botão salvar
        Then uma mensagem é exibida "<mensagem>"

        Examples:
            | mensagem                      |
            | Cadastro efetuado com sucesso |

    @negativo
    Scenario: Salvar cadastro de clientes com todos os campos vazios
        When eu entrar na tela de cadastro de clientes
            And não preencher os campos
            And clicar em salvar
        Then uma "<mensagemErro>" é exibida

        Examples:
            | mensagemErro  |
            | Insira o Nome |