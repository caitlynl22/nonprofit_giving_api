class AddCauseToOrganizationProfile < ActiveRecord::Migration
  def change
    add_reference :organization_profiles, :cause, index: true
    add_foreign_key :organization_profiles, :causes
  end
end
