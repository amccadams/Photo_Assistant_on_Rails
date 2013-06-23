Feature: User adds equipment

         Scenario:  Happy path
                    When I am on the home page and I click "Add Gear"
                    And I fill in "Canon 5d" for "Add Gear"
                    And I fill in "78368420" for "Serial Number"
                    Then I should see "You have successfully added new gear"