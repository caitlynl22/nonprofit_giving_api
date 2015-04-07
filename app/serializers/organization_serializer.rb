class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :org_name, :org_email

  has_one :organization_profile
end
