class OrganizationSerializer < ActiveModel::Serializer
  embed :ids, embed_in_root: true

  attributes :id, :org_name, :org_email

  has_one :organization_profile
end
