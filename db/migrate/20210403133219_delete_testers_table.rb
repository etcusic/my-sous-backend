class DeleteTestersTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :testers
  end
end
