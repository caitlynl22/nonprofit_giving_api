class CampaignsController < ApplicationController

  def index
    @organization_profile = OrganizationProfile.find(params[:organization_profile_id])
    @campaigns = @organization_profile.campaigns
    render json: @campaigns, status: 200
  end

  def show
    @campaign = Campaign.find(params[:id])
    render json: @campaign, status: 200
  end

  def create
    @campaign = OrganizationProfile.find(params[:organization_profile_id]).campaigns.new(campaign_params)
    if @campaign.save
      render json: @campaign, status: :created, location: @campaign
    else
      render json: @campaign.errors, status: :unprocessable_entity
    end
  end

  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update(campaign_params)
      render json: @campaign, status: 200
    else
      render json: @campaign.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy
    head :no_content
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :image_url, :description, :goal)
  end

end
