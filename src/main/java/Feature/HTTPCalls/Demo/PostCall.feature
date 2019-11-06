@post
Feature: Demo using POST method

	Background: 
		* url 'http://localhost:8081/CreateAPI'
		* header Content-Type = 'application/json'
	
	#POST - user creation/BK/SC1/dd4
	Scenario Outline: Create a user using Post method
		Given path '/service/users'
		Given request { email: '<email>', firstName: '<firstName>', gender: '<gender>', lastName: '<lastName>', status: '<userStatus>'}
		When method POST
		Then status <valid>
			And print 'Success'
		
	Examples:
		|userStatus|email|firstName|lastName|gender|valid|
		|active|Varadharajan@gmail.com|Varadha|Rajan|male|201|
		|inactive|Jeffrin@gmail.com|Jeffrin|Poulin|male|201|
		|inactive|Vikram@gmail.com|Vikram|Chandra|male|201|
		|active|Ashwini@gmail.com|Ashwini|Kumar|female|201|
		
	#POST - product creation/BK/SC2
		Scenario: Create a product using Post method
		Given path '/service/products'
		When request { "productCode": "pcl345e", "productName": "pencil", "productPrice": 2.0, "totalProductsAvailable": 2000}
		When method POST
		Then status 201
			And print 'Success'
			
			
			
			