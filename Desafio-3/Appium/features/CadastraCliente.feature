Feature: Cadastrar cliente

@abrir
Scenario: Abrir tela de cadastro de um novo cliente
    Given que eu acesso o sistema como funcionario
    When eu clicar no botão adicionar
    And clicar no botão cadastrar novo
    Then o formulário de cadastro é exibido