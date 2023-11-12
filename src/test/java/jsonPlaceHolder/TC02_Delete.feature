Feature:
  Scenario:
    Given url 'https://jsonplaceholder.typicode.com'
    And path "/posts/44"
    And method delete
    Then status 200