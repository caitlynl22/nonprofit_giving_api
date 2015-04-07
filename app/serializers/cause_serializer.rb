class CauseSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :organization_profiles
end
