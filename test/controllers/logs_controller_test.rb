require 'test_helper'

class LogsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @log = logs(:one)
  end

  test "should get index" do
    get logs_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:admin)
    get new_log_url
    assert_response :success
  end

  test "should create log" do
    sign_in users(:admin)
    assert_difference('Log.count') do
      post logs_url, params: { log: { content: @log.content, day: @log.day, motivation: @log.motivation, round: @log.round, status: @log.status, created_at: Time.now } }
    end
    assert_redirected_to log_url(Log.last)
  end

  test "should show log" do
    get log_url(@log)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:admin)
    get edit_log_url(@log)
    assert_response :success
  end

  test "should update log" do
    sign_in users(:admin)
    patch log_url(@log), params: { log: { content: @log.content, day: @log.day, motivation: @log.motivation, round: @log.round, status: @log.status } }
    assert_redirected_to log_url(@log)
  end

  test "should destroy log" do
    sign_in users(:admin)
    assert_difference('Log.count', -1) do
      delete log_url(@log)
    end
    assert_redirected_to logs_url
  end
end
