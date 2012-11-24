Feature: post blog

  Scenario: successfully post a blog
    Given a user visits the create blog page
    When the user fills the form and submits
    Then a blog should have been created in the database
