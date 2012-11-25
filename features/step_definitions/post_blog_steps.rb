Given /^a user visits the create blog page$/ do
  visit new_blog_path
end

When /^the user fills the form and submits$/ do
  fill_in "blog_title", with: "second blog"
  fill_in "blog_body", with: "I'm starting to build real stuff now!"
  click_button "Create Blog"
end

Then /^a blog should have been created in the database$/ do
  Blog.all.size.should == 1
end
