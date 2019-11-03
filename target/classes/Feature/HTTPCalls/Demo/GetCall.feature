Feature: Demo Using Get Method

	Background: 
		* url 'http://localhost:8081/CreateAPI'
		* header Content-Type = 'application/json'
		* path '/service/users'
		
	Scenario: Get all users
		Given method GET
		Then status 200
		
	Scenario: Get user with firstname and lastname
		Given param firstName = 'Ashwini'
			And param lastName = 'Kumar'
			And param gender = 'female'
		When method GET
		Then status 200
		Then match response[*].email contains ["Ashwini@gmail.com"]
		Then def result = 'Success'
			And print result
		
		
	#Difference:
		# Gherkin keyword or *
		# response or $