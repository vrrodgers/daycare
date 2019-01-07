class ChangeSpellingOfFequency < ActiveRecord::Migration[5.0]
  def change
    rename_table :information, :informations
    rename_column :informations, :fequency_id, :frequency_id
  end
end
