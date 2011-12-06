Feature: Logout as Admin
	In order to stop managing the site
	As a logged admin
	I want to logout
	
	Scenario: Successful logout
		Given I am logged in
		When I go to the logout page
		Then I should lose the admin privileges
