class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.integer :goal
      t.belongs_to :organization_profile, index: true

      t.timestamps null: false
    end
    add_foreign_key :campaigns, :organization_profiles
  end
end
