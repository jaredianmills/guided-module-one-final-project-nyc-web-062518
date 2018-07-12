old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

class Park < ActiveRecord::Base
  has_many :user_wishlist_parks
  has_many :user_visited_parks
  has_many :user_wishlists, through: :user_wishlist_parks, source: :park
  has_many :user_visitors, through: :user_visited_parks, source: :park
end
