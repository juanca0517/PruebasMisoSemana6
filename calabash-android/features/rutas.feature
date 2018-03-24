Feature: Ruts

  Scenario: As a user I want to be see ruts Transmilenio
    Given I press "Paraderos"
    When I swipe left
    And I press "Rutas"
    And I press "ESPECIAL"
    And  I press "10-10"
    Then I should see "Portal del Sur"

  Scenario: As a user I want to be see ruts Urbano
    Given I press "Rutas"
    When I press "URBANO"
    And I press "7"
    Then I should see "Cl 1 B Bis"

  Scenario: As a user I want to be see ruts Alimentador
    Given I press "Rutas"
    When I press "COMPLEMENTARIO"
    And I press "8-10"
    Then I should see "Parque Mundo Aventura"
