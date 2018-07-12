class UserVisitedParks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_visited_parks do |t|
      t.integer :user_id
      t.integer :park_id
    end
  end
end
