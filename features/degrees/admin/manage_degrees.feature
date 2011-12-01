Feature: Manage degrees
	In order to provide different degrees to enrol
	As a admin
	I want to create, edit and delete degrees
	
	Scenario: Create a new degree
		Given I go to the new degree page
		When I create a new degree
		Then I should see the new degree listed on the degrees page
	
	Scenario: Editing a degree
		Given I go to a degree edit page
		When I update this degree
		Then I should see this degree with the information updated
	
	Scenario: Deleting a degree
		Given I go to a degree page
		When I delete this degree
		Then this degree should not exist anymore
