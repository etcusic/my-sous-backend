class AddTypeToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :type, :string
  end
end
