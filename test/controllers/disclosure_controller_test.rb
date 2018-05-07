require 'test_helper'

class DisclosureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get disclosure_index_url
    assert_response :success
  end

end
