class CauseSerializer < ActiveModel::Serializer
  # embed :ids, include: true

  attributes :id, :name

  has_many :organization_profiles
end
