class CreateChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :Middle_initial
      t.string :last_name
      t.string :grade
      t.string :child_address
      t.string :gender_id
      t.integer :date_of_birth
      t.integer :child_social_security
      t.string :medical_conditions
      t.text :allergies
      t.string :pediatrician_name
      t.integer :pediatrician_phone
      t.string :pediatrician_address
      t.boolean :photagraphy

      t.timestamps
    end
  end
end
