class Blog < ActiveRecord::Base
  attr_accessible :title, :body

  def post_date
    created_at.strftime("%b %e, %Y")
  end

  def body_abbr
    body.size > 20 ? body[0,20] + "..." : body
  end
end
