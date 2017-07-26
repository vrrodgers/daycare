class AddGenderToParent < ActiveRecord::Migration[5.0]
  def change
     add_column :parents, :gender_id, :integer

  end
end
