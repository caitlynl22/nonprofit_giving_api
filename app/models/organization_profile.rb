class OrganizationProfile < ActiveRecord::Base
  validates :name, presence: true
  validates :ein, presence: true

  belongs_to :organization
  belongs_to :cause

  has_many :campaigns, dependent: :destroy

end
