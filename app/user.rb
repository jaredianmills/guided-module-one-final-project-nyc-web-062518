old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

class User < ActiveRecord::Base
  has_many :parks, through: :user_wishlist_parks
  has_many :parks, through: :user_visited_parks
end
