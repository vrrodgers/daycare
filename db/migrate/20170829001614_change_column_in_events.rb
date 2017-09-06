class ChangeColumnInEvents < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :starttime, :start
    rename_column :events, :endtime, :end 
  end
end
