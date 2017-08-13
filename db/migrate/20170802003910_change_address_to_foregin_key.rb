class ChangeAddressToForeginKey < ActiveRecord::Migration[5.0]
  def change
    remove_column :parents, :address
  end
end
