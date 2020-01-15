class AddFoodToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column(:purchases, :food, :string)
  end
end
