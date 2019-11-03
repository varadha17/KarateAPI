Feature: Demo Using Delete Method

	Background: 
		* url 'http://localhost:8081/CreateAPI'
		* header Content-Type = 'application/json'
		* path '/service/users/3'
	
	Scenario: Update users
		Given method DELETE
		Then status 204
			And print 'Success'