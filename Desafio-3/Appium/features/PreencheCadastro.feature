Feature: Preencher cadastro

@positivo
Scenario: Preencher campos para cadastrar um novo cliente
    Given acesso a tela de cadastro
    When eu informar os campos
    And clicar no botão salvar
    Then uma tela de sucesso é exibida