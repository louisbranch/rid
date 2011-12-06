Feature: Login as Admin
	In order to manage the site
	As a site admin
	I want to login and receive admin privileges
	
	Scenario: Successful login
		Given I go to the login page
		When I log in
		Then I should receive admin privileges
