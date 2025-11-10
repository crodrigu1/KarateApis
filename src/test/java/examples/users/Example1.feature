Feature: validate get requeste

  Scenario: verify current whether data

    Given url 'https://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=3e561ad67619c8eb09b2b890f20556eb'
    When method get
    Then status 200



