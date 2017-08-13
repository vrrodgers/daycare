class AddNameToUser < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :family_name, :name
  end
end
