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

  test "should create a donation" do
    donation_params = {
      donor_name: "John",
      amount: 50
    }
    assert_difference("Donation.count", 1) do
      post campaign_donations_path(@campaign), params: { donation: donation_params }
    end

    assert_redirected_to(root_path)
  end
end
