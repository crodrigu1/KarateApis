Feature: Verify get request on various end points

  Background:
    Given url 'https://dummy.restapiexample.com'
@Prueba2
  Scenario: To get all employees information in JSON format
    And path '/api/v1/employees'
    When method get
    Then status 200
    And match response contains deep {"data":[{"id":1}]}
  And match response contains deep {"data":[{"employee_name":"Cedric Kelly"}]}

@Prueba1
    Scenario: To get specific employee details
      And path '/api/v1/employee/1'
      When method get
      Then status 200
      And print response.data.employee_salary
      And print response.data.employee_age

  @Prueba3
  Scenario: To get specific employee details
    And path '/api/v1/employee/1'
    When method get
    Then status 200
    And match response.data.employee_salary == '320800'
    And match response.data.employee_age == '61'