Feature: Others

  Scenario: As a user I want to be activate the taximeter
    Given I press "Paraderos"
    When I swipe left
    And I press "Taximetro"
    Then I should see "Unidades"

  Scenario: As a user I want to be see Favourites
    Given I press "Favoritos"
    When  I press "CERRAR"
    Then I should see "Favoritos"

  Scenario: As a user I want to be set up
    Given I press "Configuración"
    When I press "Autenticación"
    Then I should see "CERRAR"
