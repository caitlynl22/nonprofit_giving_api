class OrganizationProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :mission, :description, :image_url, :website, :address, :contact, :ein

  belongs_to :cause
  belongs_to :organization
  has_many :campaigns
end
