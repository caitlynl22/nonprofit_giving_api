class CampaignSerializer < ActiveModel::Serializer
  embed :ids, embed_in_root: true

  attributes :id, :name, :image_url, :description, :goal

  belongs_to :organization_profile
end
