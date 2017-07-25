require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Chazona's #100DaysOfCode Log"
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
