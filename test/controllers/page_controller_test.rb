require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get advanced_search" do
    get :advanced_search
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get sign_up" do
    get :sign_up
    assert_response :success
  end

  test "should get account" do
    get :account
    assert_response :success
  end

  test "should get contact" do
    get :contact_us
    assert_response :success
    assert_select "title", "Contact Us | Ruby on Rails Tutorial Sample App"
  end

  test "should get my_store" do
    get :my_store
    assert_response :success
  end
  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end
  test "should get about_us" do
    get :about_us
    assert_response :success
    assert_select "title", "About Us | Ruby on Rails Tutorial Sample App"
  end

end
