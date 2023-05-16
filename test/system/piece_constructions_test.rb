require "application_system_test_case"

class PieceConstructionsTest < ApplicationSystemTestCase
  setup do
    @piece_construction = piece_constructions(:one)
  end

  test "visiting the index" do
    visit piece_constructions_url
    assert_selector "h1", text: "Piece constructions"
  end

  test "should create piece construction" do
    visit piece_constructions_url
    click_on "New piece construction"

    fill_in "Instruction", with: @piece_construction.instruction_id
    fill_in "Piece", with: @piece_construction.piece_id
    fill_in "Topstitch rows", with: @piece_construction.topstitch_rows
    click_on "Create Piece construction"

    assert_text "Piece construction was successfully created"
    click_on "Back"
  end

  test "should update Piece construction" do
    visit piece_construction_url(@piece_construction)
    click_on "Edit this piece construction", match: :first

    fill_in "Instruction", with: @piece_construction.instruction_id
    fill_in "Piece", with: @piece_construction.piece_id
    fill_in "Topstitch rows", with: @piece_construction.topstitch_rows
    click_on "Update Piece construction"

    assert_text "Piece construction was successfully updated"
    click_on "Back"
  end

  test "should destroy Piece construction" do
    visit piece_construction_url(@piece_construction)
    click_on "Destroy this piece construction", match: :first

    assert_text "Piece construction was successfully destroyed"
  end
end
