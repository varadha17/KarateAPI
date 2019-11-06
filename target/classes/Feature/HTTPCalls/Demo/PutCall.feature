@update
Feature: Demo Using Put Method

	Background: 
		* url 'http://localhost:8081/CreateAPI'
		* header Content-Type = 'application/json'
	
	#PUT - user Updation/BK/SC1/dd2	
	Scenario Outline: Update users
		Given path '/service/users/<id>'
		When request { email: '<email>', firstName: '<firstName>', gender: '<gender>', lastName: '<lastName>', status: '<userStatus>'}
		When method PUT
		Then status <valid>
			And print 'Success'
		
		Examples:
		|id|userStatus|email|firstName|lastName|gender|valid|
		|2|active|Varadharajan@gmail.com|Varadharajan|Thiruvengadam|male|200|
		|3|inactive|Vikram@gmail.com|Vikram|Chandrasekar|male|200|
	
	#PUT - Product Updation/BK/SC2
	Scenario: Update Products
		Given path '/service/products/2'
		When request { "productCode": "Ml548e", "productName": "Milk", "productPrice": 20.0, "totalProductsAvailable": 20} 
		When method PUT
		Then status 200
			And print 'Success'
			