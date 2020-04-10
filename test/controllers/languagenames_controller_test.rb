require 'test_helper'

class LanguagenamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @languagename = languagenames(:one)
  end

  test "should get index" do
    get languagenames_url
    assert_response :success
  end

  test "should get new" do
    get new_languagename_url
    assert_response :success
  end

  test "should create languagename" do
    assert_difference('Languagename.count') do
      post languagenames_url, params: { languagename: { language_name: @languagename.language_name } }
    end

    assert_redirected_to languagename_url(Languagename.last)
  end

  test "should show languagename" do
    get languagename_url(@languagename)
    assert_response :success
  end

  test "should get edit" do
    get edit_languagename_url(@languagename)
    assert_response :success
  end

  test "should update languagename" do
    patch languagename_url(@languagename), params: { languagename: { language_name: @languagename.language_name } }
    assert_redirected_to languagename_url(@languagename)
  end

  test "should destroy languagename" do
    assert_difference('Languagename.count', -1) do
      delete languagename_url(@languagename)
    end

    assert_redirected_to languagenames_url
  end
end
