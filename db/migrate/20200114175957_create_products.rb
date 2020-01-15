class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.column(:name, :string)
      t.column(:description, :string)
      t.column(:price, :decimal)
      t.column(:purchase_id, :integer)
    end
  end
end
