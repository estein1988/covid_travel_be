require 'test_helper'

class TravelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @travel = travels(:one)
  end

  test "should get index" do
    get travels_url, as: :json
    assert_response :success
  end

  test "should create travel" do
    assert_difference('Travel.count') do
      post travels_url, params: { travel: { closed_exceptions: @travel.closed_exceptions, country_flag: @travel.country_flag, country_name: @travel.country_name, current_status: @travel.current_status, days_to_quarantine: @travel.days_to_quarantine, international_travel_note: @travel.international_travel_note, international_travel_requirements: @travel.international_travel_requirements, lat_long: @travel.lat_long } }, as: :json
    end

    assert_response 201
  end

  test "should show travel" do
    get travel_url(@travel), as: :json
    assert_response :success
  end

  test "should update travel" do
    patch travel_url(@travel), params: { travel: { closed_exceptions: @travel.closed_exceptions, country_flag: @travel.country_flag, country_name: @travel.country_name, current_status: @travel.current_status, days_to_quarantine: @travel.days_to_quarantine, international_travel_note: @travel.international_travel_note, international_travel_requirements: @travel.international_travel_requirements, lat_long: @travel.lat_long } }, as: :json
    assert_response 200
  end

  test "should destroy travel" do
    assert_difference('Travel.count', -1) do
      delete travel_url(@travel), as: :json
    end

    assert_response 204
  end
end
