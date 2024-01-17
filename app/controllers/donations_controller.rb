class DonationsController < ApplicationController
  before_action :set_campaign, only: %i[new]

  def new
    @donation = Donation.new(campaign: @campaign)
  end

  def dashboard; end

  private

  def set_campaign
    @campaign = Campaign.find(params.require(:campaign_id))
  end
end
