class ChangeChildColumnTypes < ActiveRecord::Migration[5.0]
  def change
    change_column :children, :date_of_birth, :date
    change_column :children, :pediatrician_phone, :string, limit: 10
    change_column :children, :child_social_security, :string, limit: 9
    rename_column :parents, :mother_social, :social
    change_column :parents, :social, :string, limit: 9
  end
end
