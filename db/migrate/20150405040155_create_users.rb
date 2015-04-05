class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :token
      t.string :image_url
      t.text :bio

      t.timestamps null: false
    end
  end
end
