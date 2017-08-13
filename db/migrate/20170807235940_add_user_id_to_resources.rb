class AddUserIdToResources < ActiveRecord::Migration[5.0]
  def change
    add_column :parents, :user_id, :integer
    add_column :children, :user_id, :integer
  end
end
