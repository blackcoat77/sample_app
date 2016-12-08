require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Sample ROR application"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Sample ROR application"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Sample ROR application"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Sample ROR application"
  end

end
