Feature: Manage courses
	In order to provide courses for each degree
	As a admin
	I want to create, edit and destroy courses
	
	Background:
		Given I go to a degree page
		
	Scenario: Create a new course
		Given I go to the new course page
		When I create a new course
		Then I should see the new course listed on the degree page
	
	Scenario: Edit a course
		Given I go to a course edit page
		When I update this course
		Then I should see this course with the information updated
		
	Scenario: Delete a course
		Given I go to a course page
		When I delete this course
		Then this course should not exist anymore
