class ForumThread < ActiveRecord::Base
  has_many :forum_posts
end
