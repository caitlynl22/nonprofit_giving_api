class OrganizationProfileSerializer < ActiveModel::Serializer
  embed :ids, embed_in_root: true

  attributes :id, :name, :mission, :description, :image_url, :website, :address, :contact, :ein

  belongs_to :cause
  belongs_to :organization
  has_many :campaigns
end
