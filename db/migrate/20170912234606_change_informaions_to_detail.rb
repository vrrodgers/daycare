class ChangeInformaionsToDetail < ActiveRecord::Migration[5.0]
  def change
    rename_table :Informations, :detail
  end
end
