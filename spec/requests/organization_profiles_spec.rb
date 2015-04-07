require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'Organization Profiles Requests' do
  before(:all) do
    DatabaseCleaner.clean
    @causes = FactoryGirl.create_list(:cause, 3)
    @organization_profiles = FactoryGirl.create_list(:organization_profile, 10)
  end

  describe '#index' do
    it 'should return all organization profiles associated with a cause' do
      @cause = @causes.first
      @cause.organization_profiles << FactoryGirl.create_list(:organization_profile, 5)
      get "/causes/#{@cause.id}/organization_profiles"
      expect(response).to be_success
      organization_profiles = JSON.parse(response.body)
      expect(organization_profiles.length).to eq 5
    end
  end

  describe '#show' do
    it 'should retrieve a single organization_profile and return json' do
      @organization_profile = @organization_profiles.first
      get "/organization_profiles/#{@organization_profile.id}"
      expect(response).to be_success
      organization_profile = JSON.parse(response.body)
      expect(organization_profile['name']).to eq @organization_profile.name
    end
  end

  describe '#create' do
    it 'should create a new organization profile' do
      post "/causes/#{@causes.first.id}/organization_profiles",
      { organization_profile: { name: 'Dapibus Inceptos', mission: 'Nullam quis risus eget urna mollis ornare vel eu leo.', description: 'Morbi leo risus, porta ac consectetur ac, vestibulum at eros.', image_url: 'www.imgur.com/29578', website: 'www.inceptos.com', address: 'Nulla vitae elit libero, a pharetra augue.', contact: 'bob@bobcat.com', ein: '09-3829482'}
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
      organization_profile = JSON.parse(response.body)
      expect(organization_profile['mission']).to eq 'Nullam quis risus eget urna mollis ornare vel eu leo.'
    end
  end

  describe '#update' do
    it 'should update an organization_profile' do
      patch "/organization_profiles/#{@organization_profiles.first.id}",
      { organization_profile: { name: 'Egestas'}
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
      organization_profile = JSON.parse(response.body)
      expect(organization_profile['name']).to eq 'Egestas'
      expect(organization_profile['id']).to eq @organization_profiles.first.id
    end
  end

  describe '#destroy' do
    it 'should destroy an organization profile' do
      delete "/organization_profiles/#{@organization_profiles.first.id}"
      expect(response.status).to eq 204
      expect(OrganizationProfile.all).not_to include @organization_profiles.first
    end
  end

end
