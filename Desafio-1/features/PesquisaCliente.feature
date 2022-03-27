Feature: Pesquisar cliente

    @pesquisar
    Scenario: Pesquisar por um cliente
        Given que eu tenho uma lista de clientes cadastrados
        When eu entrar na tela de cadastro de clientes
            And pesquiso pelo cliente "<cliente>"
        Then o cliente pesquisado é exibido

        Examples:
            | cliente |
            | Tester  |