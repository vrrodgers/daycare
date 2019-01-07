class ChangeDetailToDetails < ActiveRecord::Migration[5.0]
  def change
    rename_table :detail, :details

  end
end
