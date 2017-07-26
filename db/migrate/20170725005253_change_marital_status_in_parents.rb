class ChangeMaritalStatusInParents < ActiveRecord::Migration[5.0]
  def change
      rename_column :parents, :maritial_status_id, :marital_status_id
  end
end
