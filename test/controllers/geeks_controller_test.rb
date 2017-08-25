require 'test_helper'

class GeeksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geek = geeks(:one)
  end

  test "should get index" do
    get geeks_url
    assert_response :success
  end

  test "should get new" do
    get new_geek_url
    assert_response :success
  end

  test "should create geek" do
    assert_difference('Geek.count') do
      post geeks_url, params: { geek: { hobby: @geek.hobby, name: @geek.name } }
    end

    assert_redirected_to geek_url(Geek.last)
  end

  test "should show geek" do
    get geek_url(@geek)
    assert_response :success
  end

  test "should get edit" do
    get edit_geek_url(@geek)
    assert_response :success
  end

  test "should update geek" do
    patch geek_url(@geek), params: { geek: { hobby: @geek.hobby, name: @geek.name } }
    assert_redirected_to geek_url(@geek)
  end

  test "should destroy geek" do
    assert_difference('Geek.count', -1) do
      delete geek_url(@geek)
    end

    assert_redirected_to geeks_url
  end
end
