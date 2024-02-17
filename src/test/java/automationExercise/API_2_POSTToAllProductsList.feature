Feature: All_Products_List_Post
  Scenario: Products_List
    Given url "https://automationexercise.com/api/productsList"
    When method POST
    And status 405
    And match responseMessage == "This request method is not supported."