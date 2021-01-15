require 'test_helper'

class AudiblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @audible = audibles(:one)
  end

  test "should get index" do
    get audibles_url, as: :json
    assert_response :success
  end

  test "should create audible" do
    assert_difference('Audible.count') do
      post audibles_url, params: { audible: { audio: @audible.audio, belongs_to: @audible.belongs_to, by: @audible.by, language: @audible.language, title: @audible.title } }, as: :json
    end

    assert_response 201
  end

  test "should show audible" do
    get audible_url(@audible), as: :json
    assert_response :success
  end

  test "should update audible" do
    patch audible_url(@audible), params: { audible: { audio: @audible.audio, belongs_to: @audible.belongs_to, by: @audible.by, language: @audible.language, title: @audible.title } }, as: :json
    assert_response 200
  end

  test "should destroy audible" do
    assert_difference('Audible.count', -1) do
      delete audible_url(@audible), as: :json
    end

    assert_response 204
  end
end
