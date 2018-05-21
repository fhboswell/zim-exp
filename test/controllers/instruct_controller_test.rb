require 'test_helper'

class InstructControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instruct_index_url
    assert_response :success
  end

end
