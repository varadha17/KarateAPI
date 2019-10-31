Feature: Demo using POST method

	Background: 
		Given url 'http://localhost:8081/CreateAPI'
		When header Content-Type = 'application/json'
		Then path '/webapi/users'
	
	Scenario Outline: Create a user using Post method
		Given request { email: '<email>', firstName: '<firstName>', gender: '<gender>', lastName: '<lastName>', status: '<userStatus>'}
		When method POST
		Then status <valid> 
		
	Examples:
		|userStatus|email|firstName|lastName|gender|valid|
		|active|Varadharajan@gmail.com|Varadha|Rajan|male|201|
		|inactive|Jeffrin@gmail.com|Jeffrin|Poulin|male|201|
		|inactive|Vikram@gmail.com|Vikram|Chandrasekar|male|201|