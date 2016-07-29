require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Planet X - Your Travel Blog"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Planet X - Your Travel Blog"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Planet X - Your Travel Blog"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Planet X - Your Travel Blog"
  end
end