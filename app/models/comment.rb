class Comment < ActiveRecord::Base
  attr_accessible :post_id, :text, :commenter
  belongs_to :user
  belongs_to :post
end
