class OrganizationSerializer < ActiveModel::Serializer
  # embed :ids, include: true

  attributes :id, :org_name, :org_email

  has_one :organization_profile

end
