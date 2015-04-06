class CreateOrganizationProfiles < ActiveRecord::Migration
  def change
    create_table :organization_profiles do |t|
      t.string :name
      t.text :mission
      t.text :description
      t.string :image_url
      t.string :website
      t.text :address
      t.string :contact
      t.string :ein
      t.belongs_to :organization, index: true

      t.timestamps null: false
    end
    add_foreign_key :organization_profiles, :organizations
  end
end
