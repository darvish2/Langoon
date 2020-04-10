require 'test_helper'

class LanguagegenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @languagegenre = languagegenres(:one)
  end

  test "should get index" do
    get languagegenres_url
    assert_response :success
  end

  test "should get new" do
    get new_languagegenre_url
    assert_response :success
  end

  test "should create languagegenre" do
    assert_difference('Languagegenre.count') do
      post languagegenres_url, params: { languagegenre: { language_genre: @languagegenre.language_genre } }
    end

    assert_redirected_to languagegenre_url(Languagegenre.last)
  end

  test "should show languagegenre" do
    get languagegenre_url(@languagegenre)
    assert_response :success
  end

  test "should get edit" do
    get edit_languagegenre_url(@languagegenre)
    assert_response :success
  end

  test "should update languagegenre" do
    patch languagegenre_url(@languagegenre), params: { languagegenre: { language_genre: @languagegenre.language_genre } }
    assert_redirected_to languagegenre_url(@languagegenre)
  end

  test "should destroy languagegenre" do
    assert_difference('Languagegenre.count', -1) do
      delete languagegenre_url(@languagegenre)
    end

    assert_redirected_to languagegenres_url
  end
end
