old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

class UserWishlistPark < ActiveRecord::Base
  belongs_to :users
  belongs_to :parks
end
