require "test_helper"

class CampaignTest < ActiveSupport::TestCase
  def setup
    @campaign = campaigns(:save_valentin)
  end

  test "should be valid" do
    assert @campaign.valid?
  end

  test "name should be present" do
    @campaign.name = " "
    assert_not @campaign.valid?
  end

  test "description should be present" do
    @campaign.description = " "
    assert_not @campaign.valid?
  end

  test "category should be present" do
    @campaign.category = nil
    assert_not @campaign.valid?
  end

  test "invalid categories cannot be accepted" do
    @campaign.category = :invalid_category
    assert_not @campaign.valid?
  end
end
