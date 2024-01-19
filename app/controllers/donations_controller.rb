class DonationsController < ApplicationController
  before_action :set_campaign, only: %i[new create]

  def new
    @donation = Donation.new(campaign: @campaign)
  end

  def create
    @donation = Donation.new(donation_params)

    if @donation.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def dashboard; end

  private

  def donation_params
    params.require(:donation).permit(:amount, :donor_name).with_defaults(campaign: @campaign)
  end

  def set_campaign
    @campaign = Campaign.find(params.require(:campaign_id))
  end
end
