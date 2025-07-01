Feature: Cadastro de Novo Usuário

  Scenario: Usuário realiza cadastro com dados válidos
    Given que estou na página de cadastro
    When preencho todos os campos obrigatórios com dados válidos
    And clico em "Cadastrar"
    Then vejo uma mensagem de sucesso
    And meu usuário é criado no sistema

  Scenario: Usuário tenta cadastrar com e-mail já existente
    Given que estou na página de cadastro
    And o e-mail informado já está cadastrado
    When preencho os demais campos corretamente
    And clico em "Cadastrar"
    Then vejo a mensagem de erro "E-mail já cadastrado"
