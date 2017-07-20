class CreateParents < ActiveRecord::Migration[5.0]
  def change
    create_table :parents do |t|
      t.integer :parent_type_id
      t.string :first_name
      t.string :Middle_initial
      t.string :last_name
      t.string :address
      t.string :occupation
      t.integer :home_phone
      t.string :employed_by
      t.integer :office_phone
      t.string :work_address
      t.string :work_hours
      t.integer :cell_phone
      t.boolean :custodial_parent
      t.integer :mother_social
      t.string :email
      t.string :driver_license_number
      t.integer :maritial_status_id

      t.timestamps
    end
  end
end
