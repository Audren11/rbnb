require "test_helper"

class Owner::DinosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_dinos_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_dinos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get owner_dinos_destroy_url
    assert_response :success
  end
end
