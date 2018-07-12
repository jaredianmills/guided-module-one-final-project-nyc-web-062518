old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

class User < ActiveRecord::Base
  has_many :user_wishlist_parks
  has_many :user_visited_parks
  has_many :wishlist_parks, through: :user_wishlist_parks, source: :park
  has_many :visited_parks, through: :user_visited_parks, source: :park
end
