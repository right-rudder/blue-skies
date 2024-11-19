require "application_system_test_case"

class MultiEngineRatingsTest < ApplicationSystemTestCase
  setup do
    @multi_engine_rating = multi_engine_ratings(:one)
  end

  test "visiting the index" do
    visit multi_engine_ratings_url
    assert_selector "h1", text: "Multi engine ratings"
  end

  test "should create multi engine rating" do
    visit multi_engine_ratings_url
    click_on "New multi engine rating"

    fill_in "Email", with: @multi_engine_rating.email
    fill_in "Message", with: @multi_engine_rating.message
    fill_in "Name", with: @multi_engine_rating.name
    fill_in "Phone", with: @multi_engine_rating.phone
    click_on "Create Multi engine rating"

    assert_text "Multi engine rating was successfully created"
    click_on "Back"
  end

  test "should update Multi engine rating" do
    visit multi_engine_rating_url(@multi_engine_rating)
    click_on "Edit this multi engine rating", match: :first

    fill_in "Email", with: @multi_engine_rating.email
    fill_in "Message", with: @multi_engine_rating.message
    fill_in "Name", with: @multi_engine_rating.name
    fill_in "Phone", with: @multi_engine_rating.phone
    click_on "Update Multi engine rating"

    assert_text "Multi engine rating was successfully updated"
    click_on "Back"
  end

  test "should destroy Multi engine rating" do
    visit multi_engine_rating_url(@multi_engine_rating)
    click_on "Destroy this multi engine rating", match: :first

    assert_text "Multi engine rating was successfully destroyed"
  end
end
