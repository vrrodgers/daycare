class CreateInformation < ActiveRecord::Migration[5.0]
  def change
    create_table :information do |t|
      t.string :tuition_amount
      t.string :fequency_id
      t.string :comments
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
