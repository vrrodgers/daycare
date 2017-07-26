class AddFrequenyToParents < ActiveRecord::Migration[5.0]
  def change
      add_column :parents, :frequency_id, :integer
  end
end
