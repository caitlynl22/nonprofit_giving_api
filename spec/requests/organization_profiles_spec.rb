require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'Organization Profiles Requests' do
  before(:all) do
    DatabaseCleaner.clean
    @organizations = FactoryGirl.create_list(:organization, 5)
    @organization_profiles = FactoryGirl.create_list(:organization_profile, 5)
  end

  describe '#index' do
    it 'should return all organization profiles' do

