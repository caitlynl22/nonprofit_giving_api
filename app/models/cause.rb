class Cause < ActiveRecord::Base
  has_many :organization_profiles, dependent: :destroy
end
