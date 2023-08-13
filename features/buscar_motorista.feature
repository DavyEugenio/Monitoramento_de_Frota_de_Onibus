Feature: Busca de motorista
  As a Usuario do sistema
  I want to buscar um motorista pelo seu nome, CPF ou email
  So that eu encontre o motorista ideal para uma rota

  Scenario: buscar motorista por nome
    Given o motorista de nome: "Maria Josefa", cpf: "11578944433", email: "teste2@cucumber.com", senha: "456789963@", telefone: "81998833627", e cnh: "1234567890" foi criado
    And o usuario esta na pagina de busca de motorista
    And digita o nome do motorista que deseja buscar
    And clica no botao buscar
    Then aparece o motorista desejado