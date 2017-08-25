require 'test_helper'

class NerdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nerd = nerds(:one)
  end

  test "should get index" do
    get nerds_url
    assert_response :success
  end

  test "should get new" do
    get new_nerd_url
    assert_response :success
  end

  test "should create nerd" do
    assert_difference('Nerd.count') do
      post nerds_url, params: { nerd: { hobby: @nerd.hobby, name: @nerd.name } }
    end

    assert_redirected_to nerd_url(Nerd.last)
  end

  test "should show nerd" do
    get nerd_url(@nerd)
    assert_response :success
  end

  test "should get edit" do
    get edit_nerd_url(@nerd)
    assert_response :success
  end

  test "should update nerd" do
    patch nerd_url(@nerd), params: { nerd: { hobby: @nerd.hobby, name: @nerd.name } }
    assert_redirected_to nerd_url(@nerd)
  end

  test "should destroy nerd" do
    assert_difference('Nerd.count', -1) do
      delete nerd_url(@nerd)
    end

    assert_redirected_to nerds_url
  end
end
