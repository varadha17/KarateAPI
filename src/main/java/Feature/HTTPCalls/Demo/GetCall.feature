Feature: Demo Using Get Method

	Background: 
		Given url 'http://localhost:8081/CreateAPI'
		When header Content-Type = 'application/json'
		Then path '/webapi/users'
		
	Scenario: Get all users
		Given method GET
		Then status 200
		
	Scenario: Get user with firstname and lastname
		Given param firstName = 'Ashwini'
			And param lastName = 'Kumar'
		When method GET
		Then status 200
		Then match $[*].email contains ["Ashwini@gmail.com"]
		