class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.column(:cashier, :string)
      t.timestamps()
    end
  end
end
