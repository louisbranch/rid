Feature: Manage universities
	In order to provide ID for many universities
	As a admin
	I want to create, edit and delete universities
	
	Scenario: Add a new university
		Given I go to the new university page
		When I create a university
		Then I should see this university information

	Scenario: Editing a university
		Given I go to the edit page of a university
		When I update this university
		Then I should see this university with the information updated

	Scenario: Deleting a university
		Given I go to a univeristy page
		When I delete this university
		Then this university should not exist anymore
