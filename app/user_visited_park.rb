old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

class UserVisitedPark < ActiveRecord::Base
  belongs_to :user
  belongs_to :park
end
