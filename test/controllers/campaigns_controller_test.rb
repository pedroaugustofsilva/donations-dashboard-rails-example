require "test_helper"

class CampaignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign_names = Campaign.pluck(:name)
  end
  test "should get index" do
    get campaigns_url
    assert_response :success
  end

  test "index should show two campaigns" do
    get campaigns_url
    assert_select "section div h5", 2
    assert_select "section div h5" do |elements|
      assert @campaign_names.include?(elements.first.content.strip)
    end
  end
end
