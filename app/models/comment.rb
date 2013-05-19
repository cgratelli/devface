class Comment < ActiveRecord::Base
  attr_accessible :comment, :concert_id, :score, :user_id
end
