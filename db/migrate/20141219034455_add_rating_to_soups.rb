class AddRatingToSoups < ActiveRecord::Migration
  def change
    add_column :soups, :rating, :integer
  end
end
