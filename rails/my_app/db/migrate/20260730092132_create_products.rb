class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price , default: 0

      t.timestamps
    end
  end
end


# Database mein products naam ki table create karo.