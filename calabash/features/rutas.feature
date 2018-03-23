Feature: Ruts

  Scenario: As a user I want to be see ruts Transmilenio
    Given I press "Rutas"
    When I press "B14"
    And I press "De la Sabana"
    Then I should see "De la Sabana"

  Scenario: As a user I want to be see ruts Urbano
    Given I press "Rutas"
    When I press "URBANO"
    And I press "T25"
    Then I should see "Calle 83"

  Scenario: As a user I want to be see ruts Alimentador
    Given I press "Rutas"
    When I press "ALIMENTADOR"
    And I press "10-3"
    Then I should see "Carbonell"
