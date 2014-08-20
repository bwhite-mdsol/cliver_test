Feature: Cliver Test via Cucumber

  Scenario: When I navigate to the IIS root I should see the iis image
    When I go to "/"
    Then I should see an "img" tag

