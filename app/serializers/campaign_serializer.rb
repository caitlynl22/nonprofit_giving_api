class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description, :goal

  belongs_to :organization_profile
end
