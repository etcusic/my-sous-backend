class RenameMetaSuplyTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :meta_supplies, :supplies
  end
end
