require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'Organizations Requests' do
  before(:all) do
    DatabaseCleaner.clean
    @organization = FactoryGirl.build(:organization)
  end

  describe '#create' do
    it 'should create a new organization' do
      post "/organizations",
      { organization: { org_name: 'Bibendum Magna', org_email: 'magna@example.com', password: 'password', password_confirmation: 'password' }
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
      token = JSON.parse(response.body)
      expect(token['token'].length).to be(32)
    end
  end

end
