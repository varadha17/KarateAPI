@get
Feature: Demo Using Get Method
	
	Background: 
		* url 'http://localhost:8081/CreateAPI'
		* header Content-Type = 'application/json'
	
	#GET - users/BK/SC1
	Scenario: Get all users
		Given path '/service/users'
		Given method GET
		Then status 200
		
	#GET - Validate user/BK/SC2
	Scenario: Get user with firstname and lastname
		Given path '/service/users'
		Given param firstName = 'Ashwini'
			And param lastName = 'Kumar'
			And param gender = 'female'
		When method GET
		Then status 200
		Then match response[*].email contains ["Ashwini@gmail.com"]
		Then def result = 'Success'
			And print result
	
	#GET - Products/BK/SC3	
	Scenario: Get all products
		Given path '/service/products'
		Given method GET
		Then status 200
		