old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

class Park < ActiveRecord::Base
  has_many :users, through: :user_wishlist_parks
  has_many :users, through: :user_visited_parks
end
