class CreateParentChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :parent_children do |t|
      t.references :parent, foreign_key: true
      t.references :child, foreign_key: true
      t.timestamps
    end
  end
end
