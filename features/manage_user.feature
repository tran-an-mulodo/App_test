Feature: Manage User
  Scenario: Create User
    Given I want contructor user username with "a", password with "123", role with 0
    When I call create User
    Then I should see user have databaes
    
  Scenario: Remove a user
    Given delete: I find user username with "a"
    When I will delete username "a"
    Then I should see not user database
    
    
  Scenario: transaction
    Given contructor user and employee
     
       | username | password | role | name |       email         | address |
       | anhanh   | 123      | 0    | a    | thanhandt@yahoo.com | a       |
    When I will create user and employee
    Then I should not see user and employee
  