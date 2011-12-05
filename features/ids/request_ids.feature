Feature: Request an ID
	In order to pay 50% off on cultural events
	As a user
	I want to request an university ID
	
	Background:
		Given the following exist:
		| university | Uerj                 |
		| degree     | Social Communication |
	
	Scenario: Requesting an ID
		Given I go to new ID page
		When I request a new ID
		Then I should receive the new ID
