class AddDefaultToStock < ActiveRecord::Migration[8.0]
  def change
    change_column_default :products, :price , :default =>  0

  end
end