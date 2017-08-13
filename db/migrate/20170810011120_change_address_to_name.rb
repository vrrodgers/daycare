class ChangeAddressToName < ActiveRecord::Migration[5.0]
  def change
    rename_column :addresses, :address, :name
    add_column :parents, :name, :string
    add_column :children, :name, :string
  end
end
