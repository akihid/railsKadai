require 'test_helper'

class TorisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toris_index_url
    assert_response :success
  end

end
