require 'test_helper'

class ContentInListsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get content_in_lists_show_url
    assert_response :success
  end

  test "should get create" do
    get content_in_lists_create_url
    assert_response :success
  end

  test "should get destroy" do
    get content_in_lists_destroy_url
    assert_response :success
  end

end
