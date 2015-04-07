class Campaign < ActiveRecord::Base
  validates :name, presence: true
  validates :goal, presence: true

  belongs_to :organization_profile
end
