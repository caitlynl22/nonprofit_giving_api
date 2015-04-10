class OrganizationProfilesController < ApplicationController

  def index
    cause = Cause.find(params[:cause_id]) if params[:cause_id].present?

    if cause
      @organization_profiles = cause.organization_profiles
    else
      @organization_profiles = OrganizationProfile.all
    end

    render json: @organization_profiles,root: 'organization_profiles', status: 200
  end

  def show
    @organization_profile = OrganizationProfile.find(params[:id])
    render json: @organization_profile, status: 200
  end

  def create
    @organization_profile = Cause.find(params[:cause_id]).organization_profiles.new(organization_profile_params)
    if @organization_profile.save
      render json: @organization_profile, status: :created, location: @organization_profile
    else
      render json: @organization_profile.errors, status: :unprocessable_entity
    end
  end

  def update
    @organization_profile = OrganizationProfile.find(params[:id])
    if @organization_profile.update(organization_profile_params)
      render json: @organization_profile, status: 200
    else
      render json: @organization_profile.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @organization_profile = OrganizationProfile.find(params[:id])
    @organization_profile.destroy
    head :no_content
  end

  def organization_profile_params
    params.require(:organization_profile).permit(:name, :mission, :description, :image_url, :website, :address, :contact, :ein)
  end
end
