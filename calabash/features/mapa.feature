Feature: Ruts by map

  Scenario: As a user I want to be see ruts in a station
    Given I press "Mapa Sistema"
    When I press "Corferias"
    Then I should see "B16"

  Scenario: As a user I want to be enlarge the map
    Given I press "Mapa Sistema"
    When I press "+"
    And I press "T25"
    Then I should see "Calle 83"

  Scenario: As a user I want to be ruts Alimentador
    Given I press "Rutas"
    When I press "ALIMENTADOR"
    And I press "10-3"
    Then I should see "Carbonell"
