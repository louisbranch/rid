Feature: Manage courses
	In order to provide differents courses to enroll
	As a admin
	I want to create, edit and delete courses
	
	Scenario: Add a new course
		Given I go to the courses page
		And I click on "New Course"
		And I fill in "Name" with "Social Communication"
		When I click on "Create Course"
		Then I should have 1 course
		And I should be redirected to the courses page
		And I should see "Course Created!"
		
	Scenario: Add a new course with required blank fields
		Given I go to the new course page
		And I fill in "Name" with ""
		When I click on "Create Course"
		Then I should have 0 courses
		And I should be redirected to the new course page
		And I should see "Name can't be blank"

	Scenario: Editing a course
		Given I have 1 course
		And I go to this course page
		And I click on "Edit"
		And I fill in "Name" with "Business Administration"
		When I click on "Update Course"
		Then I should be redirected to the courses page
		And I should see "Course Updated!"
		
	Scenario: Editing a course with required blank fields
		Given I have 1 course
		And I go to this course edit page
		And I fill in "Name" with ""
		When I click on "Update Course"
		Then I should be redirected to this course edit page
		And I should see "Name can't be blank"

	Scenario: Deleting a course
		Given I have 1 course
		And I go to this course page
		When I click on "Delete"
		Then I should have 0 course
		And I should be redirected to the courses page
		And I should see "Course Deleted!"
