class AgenciesController < ApplicationController
  before_action :set_agency, only: [:edit, :update, :destroy]

  def edit
  end

  def new
    @agency = Agency.new
  end

  def create
    @agency = Agency.new(agency_params)
    @agency.save
  end

  private
  def set_agency
    @agency = Agency.find(params[:id])
  end

  def agency_params
    params.require(:agency).permit(:name, :tel, :telegram_channel, :instagram_page, :address, :subdomain)
  end

end
