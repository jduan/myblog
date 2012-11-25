require 'spec_helper'

describe Blog do
  it "#post_date should display a human readable string" do
    blog = Blog.new
    blog.created_at = Date.parse('2001-02-03')
    blog.post_date.should == "Feb  3, 2001"
  end

  it "#body_abbr should abbreviate the body of a blog to 20 characters" do
    blog = Blog.new(body: "short blog")
    blog.body_abbr.should == "short blog"

    body = "Today is a beautiful day and I did a lot of reading."
    blog = Blog.new(body: body)
    blog.body_abbr.should == "Today is a beautiful..."
  end
end
