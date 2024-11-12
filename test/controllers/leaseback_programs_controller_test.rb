require "test_helper"

class LeasebackProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leaseback_program = leaseback_programs(:one)
  end

  test "should get index" do
    get leaseback_programs_url
    assert_response :success
  end

  test "should get new" do
    get new_leaseback_program_url
    assert_response :success
  end

  test "should create leaseback_program" do
    assert_difference("LeasebackProgram.count") do
      post leaseback_programs_url, params: { leaseback_program: { aircraft_manufacturer: @leaseback_program.aircraft_manufacturer, aircraft_model: @leaseback_program.aircraft_model, aircraft_year: @leaseback_program.aircraft_year, email: @leaseback_program.email, message: @leaseback_program.message, name: @leaseback_program.name, phone: @leaseback_program.phone } }
    end

    assert_redirected_to leaseback_program_url(LeasebackProgram.last)
  end

  test "should show leaseback_program" do
    get leaseback_program_url(@leaseback_program)
    assert_response :success
  end

  test "should get edit" do
    get edit_leaseback_program_url(@leaseback_program)
    assert_response :success
  end

  test "should update leaseback_program" do
    patch leaseback_program_url(@leaseback_program), params: { leaseback_program: { aircraft_manufacturer: @leaseback_program.aircraft_manufacturer, aircraft_model: @leaseback_program.aircraft_model, aircraft_year: @leaseback_program.aircraft_year, email: @leaseback_program.email, message: @leaseback_program.message, name: @leaseback_program.name, phone: @leaseback_program.phone } }
    assert_redirected_to leaseback_program_url(@leaseback_program)
  end

  test "should destroy leaseback_program" do
    assert_difference("LeasebackProgram.count", -1) do
      delete leaseback_program_url(@leaseback_program)
    end

    assert_redirected_to leaseback_programs_url
  end
end
