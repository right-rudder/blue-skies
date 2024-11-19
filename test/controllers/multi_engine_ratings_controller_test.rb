require "test_helper"

class MultiEngineRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multi_engine_rating = multi_engine_ratings(:one)
  end

  test "should get index" do
    get multi_engine_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_multi_engine_rating_url
    assert_response :success
  end

  test "should create multi_engine_rating" do
    assert_difference("MultiEngineRating.count") do
      post multi_engine_ratings_url, params: { multi_engine_rating: { email: @multi_engine_rating.email, message: @multi_engine_rating.message, name: @multi_engine_rating.name, phone: @multi_engine_rating.phone } }
    end

    assert_redirected_to multi_engine_rating_url(MultiEngineRating.last)
  end

  test "should show multi_engine_rating" do
    get multi_engine_rating_url(@multi_engine_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_multi_engine_rating_url(@multi_engine_rating)
    assert_response :success
  end

  test "should update multi_engine_rating" do
    patch multi_engine_rating_url(@multi_engine_rating), params: { multi_engine_rating: { email: @multi_engine_rating.email, message: @multi_engine_rating.message, name: @multi_engine_rating.name, phone: @multi_engine_rating.phone } }
    assert_redirected_to multi_engine_rating_url(@multi_engine_rating)
  end

  test "should destroy multi_engine_rating" do
    assert_difference("MultiEngineRating.count", -1) do
      delete multi_engine_rating_url(@multi_engine_rating)
    end

    assert_redirected_to multi_engine_ratings_url
  end
end
