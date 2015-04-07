require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'Causes Requests' do
  before(:all) do
    DatabaseCleaner.clean
    @causes = FactoryGirl.create_list(:cause, 5)
  end

  describe '#index' do
    it 'should return all of the causes' do
      get '/causes'
      expect(response).to be_success
      causes = JSON.parse(response.body)
      expect(causes.length).to eq 5
    end
  end

  describe '#show' do
    it 'should retrieve a single cause and return json' do
      @cause = @causes.first
      get "/causes/#{@cause.id}"
      expect(response).to be_success
      cause = JSON.parse(response.body)
      expect(cause['name']).to eq @cause.name
    end
  end

  describe '#create' do
    it 'should create a new cause' do
      post '/causes',
      { cause: { name: 'Arts'}
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
      cause = JSON.parse(response.body)
      expect(cause['name']).to eq 'Arts'
    end
  end

  describe '#destroy' do
    it 'should destroy a cause' do
      delete "/causes/#{@causes.first.id}"
      expect(response.status).to eq 204
      expect(Cause.all).not_to include @causes.first
    end
  end

end
