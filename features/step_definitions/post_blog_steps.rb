Given /^a user visits the create blog page$/ do
  visit blogs_path
end

When /^the user fills the form and submits$/ do
  fill_in "title", with: "first blog"
  fill_in "body", with: "I'm starting to build real stuff now!"
  click_button "submit"
end

Then /^a blog should have been created in the database$/ do
  Blog.all.size.should == 1
end
