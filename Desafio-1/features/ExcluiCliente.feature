Feature: Excuir cliente

    @excluir
    Scenario: Excluir um cliente
        Given que eu tenho uma lista de clientes cadastrados
        When eu entrar na tela de cadastro de clientes
        And clicar no nome do cliente que desejo Excluir
        And clicar no botão excluir
        And confimar a exclusão
        Then uma "<mensagemExcluir>" é exibida

        Examples:
            | mensagemExcluir               |
            | Cadastro excluído com sucesso |

