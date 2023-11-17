Feature: Get_request_restfulBooker
  Scenario: Get_RestfulBooker
    Given url 'https://restful-booker.herokuapp.com/booking/1733'
    And method GET
    And status 200