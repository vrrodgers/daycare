class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :Name
      t.date :date
      t.integer :cost
      t.text :description
      t.text :comments
      t.timestamps
    end
  end
end
