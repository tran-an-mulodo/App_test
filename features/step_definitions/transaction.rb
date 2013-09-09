Given(/^contructor user and employee$/) do |table|
  # table is a Cucumber::Ast::Table
  @count_em1=Employee.all
  @count_user1=User.all
  @employee ||=Employee.new
  @user=User.new
  table.hashes.each do |t|
    @employee=Employee.new(name:t[:name],email:t[:email],address:t[:address])
    @user=User.new(password:t[:password],role:t[:role])
  end
 
end

When(/^I will create user and employee$/) do
   Employee.transaction do
     @employee.save
     @user.save
   end
   

end

Then(/^I should not see user and employee$/) do
  @count_em1.should==@count_em1
 
 
end