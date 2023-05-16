require "test_helper"

class PieceConstructionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piece_construction = piece_constructions(:one)
  end

  test "should get index" do
    get piece_constructions_url
    assert_response :success
  end

  test "should get new" do
    get new_piece_construction_url
    assert_response :success
  end

  test "should create piece_construction" do
    assert_difference("PieceConstruction.count") do
      post piece_constructions_url, params: { piece_construction: { instruction_id: @piece_construction.instruction_id, piece_id: @piece_construction.piece_id, topstitch_rows: @piece_construction.topstitch_rows } }
    end

    assert_redirected_to piece_construction_url(PieceConstruction.last)
  end

  test "should show piece_construction" do
    get piece_construction_url(@piece_construction)
    assert_response :success
  end

  test "should get edit" do
    get edit_piece_construction_url(@piece_construction)
    assert_response :success
  end

  test "should update piece_construction" do
    patch piece_construction_url(@piece_construction), params: { piece_construction: { instruction_id: @piece_construction.instruction_id, piece_id: @piece_construction.piece_id, topstitch_rows: @piece_construction.topstitch_rows } }
    assert_redirected_to piece_construction_url(@piece_construction)
  end

  test "should destroy piece_construction" do
    assert_difference("PieceConstruction.count", -1) do
      delete piece_construction_url(@piece_construction)
    end

    assert_redirected_to piece_constructions_url
  end
end
