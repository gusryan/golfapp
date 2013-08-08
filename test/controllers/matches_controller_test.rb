require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post :create, match: { course_id: @match.course_id, course_name: @match.course_name, golfer1_id: @match.golfer1_id, golfer1_name: @match.golfer1_name, golfer2_id: @match.golfer2_id, golfer2_name: @match.golfer2_name, golfer_id: @match.golfer_id, name: @match.name, score: @match.score, winner: @match.winner }
    end

    assert_redirected_to match_path(assigns(:match))
  end

  test "should show match" do
    get :show, id: @match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match
    assert_response :success
  end

  test "should update match" do
    patch :update, id: @match, match: { course_id: @match.course_id, course_name: @match.course_name, golfer1_id: @match.golfer1_id, golfer1_name: @match.golfer1_name, golfer2_id: @match.golfer2_id, golfer2_name: @match.golfer2_name, golfer_id: @match.golfer_id, name: @match.name, score: @match.score, winner: @match.winner }
    assert_redirected_to match_path(assigns(:match))
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete :destroy, id: @match
    end

    assert_redirected_to matches_path
  end
end
