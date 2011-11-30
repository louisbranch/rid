Feature: Manage universities
	In order to provide ID for many universities
	As a admin
	I want to create, edit and delete universities
	
	Scenario: Add a new university
		Given I go to the universities page
		And I click on "New University"
		And I fill in the following:
		  | Acronymous | Uerj                                     |
		  | Name       | Universidade do Estado do Rio de Janeiro |
		When I click on "Create University"
		Then I should have 1 university
		And I should be redirected to this university page
		And I should see "University Created!"

	Scenario: Add a new university with required blank fields
		Given I go to the new university page
		And I fill in "Name" with ""
		When I click on "Create University"
		Then I should have 0 universities
		And I should be redirected to the new university page
		And I should see "Name can't be blank"
	
	Scenario: Editing a university
		Given I have 1 university
		And I go to this university page
		And I click on "Edit"
		And I fill in the following:
		  | Acronymous | Uerj                                     |
		  | Name       | Universidade do Estado do Rio de Janeiro |
		When I click on "Update University"
		Then I should be redirected to this university page
		And I should see "University Updated!"
	
	Scenario: Editing a university with required blank fields
		Given I have 1 university
		And I go to this university edit page
		And I fill in "Name" with ""
		When I click on "Update University"
		Then I should be redirected to this university edit page
		And I should see "Name can't be blank"
		
	Scenario: Deleting a university
		Given I have 1 university
		And I go to this university page
		When I click on "Delete"
		Then I should have 0 university
		And I should be redirected to the universities page
		And I should see "University Deleted!"
