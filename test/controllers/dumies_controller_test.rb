require 'test_helper'

class DumiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dumy = dumies(:one)
  end

  test "should get index" do
    get dumies_url
    assert_response :success
  end

  test "should get new" do
    get new_dumy_url
    assert_response :success
  end

  test "should create dumy" do
    assert_difference('Dumy.count') do
      post dumies_url, params: { dumy: {  } }
    end

    assert_redirected_to dumy_url(Dumy.last)
  end

  test "should show dumy" do
    get dumy_url(@dumy)
    assert_response :success
  end

  test "should get edit" do
    get edit_dumy_url(@dumy)
    assert_response :success
  end

  test "should update dumy" do
    patch dumy_url(@dumy), params: { dumy: {  } }
    assert_redirected_to dumy_url(@dumy)
  end

  test "should destroy dumy" do
    assert_difference('Dumy.count', -1) do
      delete dumy_url(@dumy)
    end

    assert_redirected_to dumies_url
  end
end
