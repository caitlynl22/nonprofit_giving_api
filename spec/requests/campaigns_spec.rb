require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'Campaigns Requests' do
  before(:all) do
    DatabaseCleaner.clean
    @organization_profiles = FactoryGirl.create_list(:organization_profile, 5)
    @campaigns = FactoryGirl.create_list(:campaign, 10)
  end

  describe '#index' do
    it 'should return campaigns associated with an organization profile' do
      @organization_profile = @organization_profiles.first
      @organization_profile.campaigns << FactoryGirl.create_list(:campaign, 5)
      get "/organization_profiles/#{@organization_profile.id}/campaigns"
      expect(response).to be_success
      campaigns = JSON.parse(response.body)
      expect(campaigns.length).to eq 5
    end
  end

  describe '#show' do
    it 'should retrieve a single campaign and return json' do
      @campaign = @campaigns.first
      get "/campaigns/#{@campaign.id}"
      expect(response).to be_success
      campaign = JSON.parse(response.body)
      expect(campaign['description']).to eq @campaign.description
    end
  end

  describe '#create' do
    it 'should create a new campaign' do
      post "/organization_profiles/#{@organization_profiles.first.id}/campaigns",
      { campaign: { name: 'Mattis Dapibus Dolor', image_url: 'www.imgur.com/skafahf24', description: 'Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.', goal: 20000 }
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
      campaign = JSON.parse(response.body)
      expect(campaign['goal']).to eq 20000
    end
  end

  describe '#update' do
    it 'should update a campaign' do
      patch "/campaigns/#{@campaigns.first.id}",
      { campaign: { goal: 30000}
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
      campaign = JSON.parse(response.body)
      expect(campaign['goal']).to eq 30000
      expect(campaign['id']).to eq @campaigns.first.id
    end
  end

  describe '#destroy' do
    it 'should destroy a campaign' do
      delete "/campaigns/#{@campaigns.first.id}"
      expect(response.status).to eq 204
      expect(Campaign.all).not_to include @campaigns.first
    end
  end

end
