require 'test_helper'

class PokemenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokeman = pokemen(:one)
  end

  test "should get index" do
    get pokemen_url
    assert_response :success
  end

  test "should get new" do
    get new_pokeman_url
    assert_response :success
  end

  test "should create pokeman" do
    assert_difference('Pokeman.count') do
      post pokemen_url, params: { pokeman: { element: @pokeman.element, name: @pokeman.name } }
    end

    assert_redirected_to pokeman_url(Pokeman.last)
  end

  test "should show pokeman" do
    get pokeman_url(@pokeman)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokeman_url(@pokeman)
    assert_response :success
  end

  test "should update pokeman" do
    patch pokeman_url(@pokeman), params: { pokeman: { element: @pokeman.element, name: @pokeman.name } }
    assert_redirected_to pokeman_url(@pokeman)
  end

  test "should destroy pokeman" do
    assert_difference('Pokeman.count', -1) do
      delete pokeman_url(@pokeman)
    end

    assert_redirected_to pokemen_url
  end
end
