class AddFoodTypeToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :food_type, :string
  end
end
