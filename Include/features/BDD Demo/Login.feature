Feature: Login

  Scenario Outline: Valid login
    Given User navigates to Login page
    When User enters valid <username> and <password> credentials
    And click on Login button
    Then User is navigated to the Home page

    Examples: 
      | username | password                 |
      | Admin    | hUKwJTbofgPU9eVlw/CnDQ== |

  Scenario Outline: Invalid login
    Given User navigates to Login page
    When User enters invalid <username> and <password> credentials
    And click on Login button
    Then User gets an error message

    Examples: 
      | username | password |
      | ABC      | hUKwJTbofgPU9eVlw/CnDQ== |
