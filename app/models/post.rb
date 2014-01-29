class Post < ActiveRecord::Base
  attr_accessible :text, :title, :user_id
  has_many :comments
  belongs_to :user
end
