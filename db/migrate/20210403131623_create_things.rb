class CreateThings < ActiveRecord::Migration[6.1]
  def change
    create_table :things do |t|
      t.string :words

      t.timestamps
    end
  end
end
