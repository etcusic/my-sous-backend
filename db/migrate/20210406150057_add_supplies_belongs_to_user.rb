class AddSuppliesBelongsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :supplies, :user_id, :bigint, null: false
  end
end
