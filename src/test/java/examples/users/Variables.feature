Feature: validate variables concept
  Background:
    Given def company_name = "Lebyy.com"

  Scenario: verify varaible data type
    Given def employee_name = "cesar"
    When def employee_id = 15377
   # Then print employee_id
   # Then print employee_name
  Then print "Employee ID value is", employee_id
    Then print "Employee name is", employee_namegi
    Then  print "Company name is", company_name

    Scenario: reuse of variable

      Then print "Company name is", company_name
