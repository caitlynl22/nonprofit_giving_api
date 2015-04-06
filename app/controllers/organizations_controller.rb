class OrganizationsController < ApplicationController
  before_filter :authenticate, only: [:show, :update, :destroy]

  def sign_in
    organization = Organization.find_by(org_email: params[:org_email])
    if organization && organization.authenticate(params[:password])
      render json: {token: organization.token, id: organization.id}
    else
      head :unauthorized
    end
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      render json: {token: @organization.token, id: @organization.id}
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  def show
    @organization = Organization.find(params[:id])
    render json: @organization, status: 200
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update(organization_params)
      render json: @organization, status: 200
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    head :no_content
  end

  private

  def organization_params
    params.require(:organization).permit(:org_name, :org_email, :password, :password_confirmation, :token)
  end

end
