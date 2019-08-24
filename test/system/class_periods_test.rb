require "application_system_test_case"

class ClassPeriodsTest < ApplicationSystemTestCase
  setup do
    @class_period = class_periods(:one)
  end

  test "visiting the index" do
    visit class_periods_url
    assert_selector "h1", text: "Class Periods"
  end

  test "creating a Class period" do
    visit class_periods_url
    click_on "New Class Period"

    fill_in "Attendance count", with: @class_period.attendance_count
    fill_in "Date", with: @class_period.date
    fill_in "Week day", with: @class_period.week_day
    click_on "Create Class period"

    assert_text "Class period was successfully created"
    click_on "Back"
  end

  test "updating a Class period" do
    visit class_periods_url
    click_on "Edit", match: :first

    fill_in "Attendance count", with: @class_period.attendance_count
    fill_in "Date", with: @class_period.date
    fill_in "Week day", with: @class_period.week_day
    click_on "Update Class period"

    assert_text "Class period was successfully updated"
    click_on "Back"
  end

  test "destroying a Class period" do
    visit class_periods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class period was successfully destroyed"
  end
end
