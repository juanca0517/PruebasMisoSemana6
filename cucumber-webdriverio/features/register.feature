Feature: Register into losestudiantes
As an user I want to register myself within losestudiantes website in order to rate teachers

Scenario Outline: Register with wrong inputs

  Given I go to los estudiantes home screen
    When I open the login screen
    And I fill with <name> and <last_name> and <email> and <click> and <password>
    And I try to login
    Then I expect to see <message>

      Examples:
      | name     | last_name | email                          | password     |click | message       |
      | Juan     | Carlos    |                                | Uniandes1236 | true | Ingresa tu    |
      | Juan     | Carlos    | jc.cifuentes@uniandes.edu.co   |              | true | Ingresa una   |
      | Juan     | Carlos    | jc.cifuentes@uniandes.edu.co   | Uniandes1236 | false| Debes aceptar |
      | Juan     | Carlos    | jc.cifuentes@uniandes.edu.co   | Uniandes1236 | true | Registro exi  |