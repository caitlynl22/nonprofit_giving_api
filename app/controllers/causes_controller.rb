class CausesController < ApplicationController

  def index
    @causes = Cause.all
    render json: @causes, status: 200
  end

  def show
    @cause = Cause.find(params[:id])
    render json: @cause, status: 200
  end

  def create
    @cause = Cause.new(cause_params)
    if @cause.save
      render json: @cause, status: :created, location: @cause
    else
      render json: @cause.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @cause = Cause.find(params[:id])
    @cause.destroy
    head :no_content
  end

  private

  def cause_params
    params.require(:cause).permit(:name)
  end

end
