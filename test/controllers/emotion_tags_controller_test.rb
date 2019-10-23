require 'test_helper'

class EmotionTagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emotion_tags_index_url
    assert_response :success
  end

  test "should get show" do
    get emotion_tags_show_url
    assert_response :success
  end

  test "should get new" do
    get emotion_tags_new_url
    assert_response :success
  end

  test "should get create" do
    get emotion_tags_create_url
    assert_response :success
  end

  test "should get destroy" do
    get emotion_tags_destroy_url
    assert_response :success
  end

end
