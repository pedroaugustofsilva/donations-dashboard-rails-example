require "test_helper"

class DonationTest < ActiveSupport::TestCase
  def setup
    @donation = donations(:john_doe_donation)
  end

  test "fixture should be valid" do
    assert @donation.valid?
  end

  test "donor name should be present" do
    @donation.donor_name = " "
    assert_not @donation.valid?
  end

  test "amount should be within allowed range" do
    @donation.amount = 0
    assert_not @donation.valid?
    @donation.amount = 101
    assert_not @donation.valid?
  end

  test "should belong to campaign" do
    assert @donation.campaign.present?
  end
end
