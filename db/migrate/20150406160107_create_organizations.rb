class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :org_name
      t.string :org_email
      t.string :password
      t.string :password_digest
      t.string :token

      t.timestamps null: false
    end
  end
end
