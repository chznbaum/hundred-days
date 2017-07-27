require 'test_helper'

class LogsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @log = logs(:one)
    @current_user = users(:admin)
    puts "Current user is: #{@current_user.email}"
  end

  test "should get index" do
    get logs_url
    assert_response :success
  end

  test "should get new" do
    get new_log_url
  end

  test "should create log" do

  end

  test "should show log" do
    get log_url(@log)
    assert_response :success
  end

  test "should get edit" do
    get edit_log_url(@log)
  end

  test "should update log" do
    patch log_url(@log), params: { log: { content: @log.content, day: @log.day, motivation: @log.motivation, round: @log.round, status: @log.status } } if @current_user && @current_user.roles = "site_admin"
  end

  test "should destroy log" do
    
  end
end
