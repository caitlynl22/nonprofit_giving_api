class Organization < ActiveRecord::Base
  validates :org_email, presence: true, uniqueness: true
  validates :org_name, presence: true, uniqueness: true

  has_one :organization_profile

  has_secure_password

  before_create :generate_token

  def generate_token
    return if token.present?
    begin
      self.token = SecureRandom.uuid.gsub(/\-/, '')
    end while self.class.exists?(token: token)
  end
end
