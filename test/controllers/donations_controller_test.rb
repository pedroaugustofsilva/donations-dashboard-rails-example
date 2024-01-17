require "test_helper"

class DonationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign = campaigns(:save_valentin)
  end

  test "should get new" do
    get new_campaign_donation_path(@campaign)
    assert_response(:success)
    assert_dom "h1", "Make a donation for #{@campaign.name}"
  end
end
