require 'test_helper'

class OutfitControllerTest < ActionDispatch::IntegrationTest
  test "should get add_to_outfit" do
    get outfit_add_to_outfit_url
    assert_response :success
  end

  test "should get view_outfit" do
    get outfit_view_outfit_url
    assert_response :success
  end

  test "should get get_dressed" do
    get outfit_get_dressed_url
    assert_response :success
  end

end
