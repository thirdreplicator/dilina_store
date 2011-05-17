Feature: List widgets

As an anonymous user
I can see a list of widgets
In order to see which widgets are tasty

Scenario: Anonymous user, blank page

Given I am an anonymous user
When I am on the widget listing page
Then I should see "Widget listing"

Scenario: Anonymous user, widget listing

Given I am an anonymous user
And there is a widget "Ipad"
And there is a widget "Linux CD"
When I am on the widget listing page
Then I should see "Ipad"
And I should see "Linux CD"

Scenario: Anonymous user, attempt to create

Given I am an anonymous user
And I am on the widget listing page
And I am on the new widget page
Then I should be on the sign in page

Scenario: Logged in user, create widget

Given there is a user with email "thirdreplicator@gmail.com" and password "abc123"
And I am logged in as "thirdreplicator@gmail.com"
When I go to the new widget page
And I fill in "Ipad" for "widget_name"
And I press "Create"
Then I should be on the widget detail page for "Ipad"
And I should see "Ipad"

Scenario: Logged in user, edit widget

Given there is a user with email "thirdreplicator@gmail.com" and password "abc123"
And I am logged in as "thirdreplicator@gmail.com"
And there is a widget "Ipad"

  When I go to the widget listing page
    And I follow "edit"
  Then I should be on the edit widget page for "Ipad"

  When I fill in "I-pad" for "widget_name"
    And I press "Save"
  Then I should be on the widget detail page for "I-pad"
    And I should see "I-pad"

  When I follow "Widgets"
  Then I should be on the widget listing page
    And I should see "I-pad"
    
  
