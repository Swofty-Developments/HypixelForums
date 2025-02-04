class CreateHypixelUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :hypixel_users do |t|
      t.string :email
      t.string :username
      t.datetime :date_created
      t.datetime :last_login
      t.string :profile_picture_link
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
