Feature: GetAllProductList
  Scenario: GetAll
    Given url "https://automationexercise.com/api/productsList"
    When  method GET
    And   status 200
    And match responseStatus == 200
