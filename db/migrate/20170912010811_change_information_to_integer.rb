class ChangeInformationToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :information, :fequency_id, :integer
  end
end
