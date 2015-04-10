class CampaignSerializer < ActiveModel::Serializer
  # embed :ids, include: true

  attributes :id, :name, :image_url, :description, :goal

  belongs_to :organization_profile
end
