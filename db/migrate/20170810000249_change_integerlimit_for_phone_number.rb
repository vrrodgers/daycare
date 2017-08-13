class ChangeIntegerlimitForPhoneNumber < ActiveRecord::Migration[5.0]
  def change
    change_column :parents, :home_phone, :string, limit: 10
    change_column :parents, :cell_phone, :string, limit: 10
    change_column :parents, :office_phone, :string, limit: 10
  end
end
