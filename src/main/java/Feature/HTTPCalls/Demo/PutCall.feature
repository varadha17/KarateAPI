Feature: Demo Using Put Method

	Background: 
		Given url 'http://localhost:8081/CreateAPI'
		When header Content-Type = 'application/json'
		Then path '/webapi/users/3'
	Scenario Outline: Update users
		Given request { email: '<email>', firstName: '<firstName>', gender: '<gender>', lastName: '<lastName>', status: '<userStatus>'}
		When method PUT
		Then status 200
		
		Examples:
		|userStatus|email|firstName|lastName|gender|
		|active|Varadharajan@gmail.com|Varadharajan|Thiruvengadam|male|