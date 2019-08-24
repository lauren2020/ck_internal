require 'test_helper'

class ClassPeriodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_period = class_periods(:one)
  end

  test "should get index" do
    get class_periods_url
    assert_response :success
  end

  test "should get new" do
    get new_class_period_url
    assert_response :success
  end

  test "should create class_period" do
    assert_difference('ClassPeriod.count') do
      post class_periods_url, params: { class_period: { attendance_count: @class_period.attendance_count, date: @class_period.date, week_day: @class_period.week_day } }
    end

    assert_redirected_to class_period_url(ClassPeriod.last)
  end

  test "should show class_period" do
    get class_period_url(@class_period)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_period_url(@class_period)
    assert_response :success
  end

  test "should update class_period" do
    patch class_period_url(@class_period), params: { class_period: { attendance_count: @class_period.attendance_count, date: @class_period.date, week_day: @class_period.week_day } }
    assert_redirected_to class_period_url(@class_period)
  end

  test "should destroy class_period" do
    assert_difference('ClassPeriod.count', -1) do
      delete class_period_url(@class_period)
    end

    assert_redirected_to class_periods_url
  end
end
