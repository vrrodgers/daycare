class AddAddressToParent < ActiveRecord::Migration[5.0]
  def change
    # remove_column :parents, :address_id
    remove_column :children, :child_address
    add_column :parents, :address_id, :integer
    add_column :children, :address_id, :integer
  end
end
