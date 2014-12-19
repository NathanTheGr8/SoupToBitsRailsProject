class RemoveIntegerFromSoups < ActiveRecord::Migration
  def change
  	remove_column :soups, :integer, :string
  end
end
