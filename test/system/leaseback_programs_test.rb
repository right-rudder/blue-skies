require "application_system_test_case"

class LeasebackProgramsTest < ApplicationSystemTestCase
  setup do
    @leaseback_program = leaseback_programs(:one)
  end

  test "visiting the index" do
    visit leaseback_programs_url
    assert_selector "h1", text: "Leaseback programs"
  end

  test "should create leaseback program" do
    visit leaseback_programs_url
    click_on "New leaseback program"

    fill_in "Aircraft manufacturer", with: @leaseback_program.aircraft_manufacturer
    fill_in "Aircraft model", with: @leaseback_program.aircraft_model
    fill_in "Aircraft year", with: @leaseback_program.aircraft_year
    fill_in "Email", with: @leaseback_program.email
    fill_in "Message", with: @leaseback_program.message
    fill_in "Name", with: @leaseback_program.name
    fill_in "Phone", with: @leaseback_program.phone
    click_on "Create Leaseback program"

    assert_text "Leaseback program was successfully created"
    click_on "Back"
  end

  test "should update Leaseback program" do
    visit leaseback_program_url(@leaseback_program)
    click_on "Edit this leaseback program", match: :first

    fill_in "Aircraft manufacturer", with: @leaseback_program.aircraft_manufacturer
    fill_in "Aircraft model", with: @leaseback_program.aircraft_model
    fill_in "Aircraft year", with: @leaseback_program.aircraft_year
    fill_in "Email", with: @leaseback_program.email
    fill_in "Message", with: @leaseback_program.message
    fill_in "Name", with: @leaseback_program.name
    fill_in "Phone", with: @leaseback_program.phone
    click_on "Update Leaseback program"

    assert_text "Leaseback program was successfully updated"
    click_on "Back"
  end

  test "should destroy Leaseback program" do
    visit leaseback_program_url(@leaseback_program)
    click_on "Destroy this leaseback program", match: :first

    assert_text "Leaseback program was successfully destroyed"
  end
end
