require "test_helper"

class ExrecisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exrecises_index_url
    assert_response :success
  end

  test "should get show" do
    get exrecises_show_url
    assert_response :success
  end

  test "should get edit" do
    get exrecises_edit_url
    assert_response :success
  end

  test "should get update" do
    get exrecises_update_url
    assert_response :success
  end

  test "should get new" do
    get exrecises_new_url
    assert_response :success
  end

  test "should get create" do
    get exrecises_create_url
    assert_response :success
  end

  test "should get destroy" do
    get exrecises_destroy_url
    assert_response :success
  end
end
