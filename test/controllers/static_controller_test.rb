require "test_helper"

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get accueil" do
    get static_accueil_url
    assert_response :success
  end

  test "should get assistance" do
    get static_assistance_url
    assert_response :success
  end

  test "should get privacy" do
    get static_privacy_url
    assert_response :success
  end

  test "should get conditions" do
    get static_conditions_url
    assert_response :success
  end

  test "should get confidentialite" do
    get static_confidentialite_url
    assert_response :success
  end

  test "should get cgu" do
    get static_cgu_url
    assert_response :success
  end

  test "should get cookies" do
    get static_cookies_url
    assert_response :success
  end

  test "should get access" do
    get static_access_url
    assert_response :success
  end

  test "should get directives" do
    get static_directives_url
    assert_response :success
  end
end
