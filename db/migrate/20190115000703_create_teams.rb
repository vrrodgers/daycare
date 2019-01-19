class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :phone_number
      t.string :social_link
      t.string :email
      t.text :bio
      t.string :image
      t.timestamps
    end
  end
end
