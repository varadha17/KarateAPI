Feature: Demo Using Delete Method

	Background: 
		Given url 'http://localhost:8081/CreateAPI'
		When header Content-Type = 'application/json'
		Then path '/webapi/users/3'
	
	Scenario: Update users
		Given method DELETE
		Then status 204