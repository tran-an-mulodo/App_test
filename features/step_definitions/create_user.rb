
Given(/^I want contructor user username with "(.*?)", password with "(.*?)", role with (\d+)$/) do |arg1, arg2, arg3|
  @user=User.new(username:arg1,password:arg2,role:arg3)
  @count1=User.count
end

When(/^I call create User$/) do
 @user.save
 @count2=User.count
end

Then(/^I should see user have databaes$/) do
  @count2.should== @count1+1
end


# Scenario: Update User
    # Given upadte: I find user username with "1122"
    # When I will update username anh with "anh_new"
    # Then I should see user have username with "anh_new"
#     
  # Scenario: Remove a user
    # Given delete: I find user username with "a"
    # When I will delete username "a"
    # Then I should see not user database
#     
  # Scenario: transaction
    # Given contructor user and employee
#     
      # | username | password | role | name |       email         | address |
      # | anhanh   | 123      | 0    | a    | thanhandt@yahoo.com | a       |
    # When I will create user and employee
    # Then I should not see user and employee