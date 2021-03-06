require "test_helper"

class HorsesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get horses_index_url
    assert_response :success
  end

  test "should get show" do
    get horses_show_url
    assert_response :success
  end

  test "should get update" do
    get horses_update_url
    assert_response :success
  end

  test "should get new" do
    get horses_new_url
    assert_response :success
  end

  test "should get edit" do
    get horses_edit_url
    assert_response :success
  end
end
