class AddStockToProducts < ActiveRecord::Migration[8.1]
  def change
    add_column :products, :stock, :integer , default: 1
  end
end
