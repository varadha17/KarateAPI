Feature: Demo using POST method

	Background: 
		* url 'http://localhost:8081/CreateAPI'
		* header Content-Type = 'application/json'
		* path '/service/users'
	
	Scenario Outline: Create a user using Post method
		Given request { email: '<email>', firstName: '<firstName>', gender: '<gender>', lastName: '<lastName>', status: '<userStatus>'}
		When method POST
		Then status 201
			And print 'Success'
		
	Examples:
		|userStatus|email|firstName|lastName|gender|
		|active|Varadharajan@gmail.com|Varadha|Rajan|male|
		|inactive|Jeffrin@gmail.com|Jeffrin|Poulin|male|
		|inactive|Vikram@gmail.com|Vikram|Chandrasekar|male|
		|active|Ashwini@gmail.com|Ashwini|Kumar|female|