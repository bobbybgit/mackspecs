require "application_system_test_case"

class StyleSpecsTest < ApplicationSystemTestCase
  setup do
    @style_spec = style_specs(:one)
  end

  test "visiting the index" do
    visit style_specs_url
    assert_selector "h1", text: "Style specs"
  end

  test "should create style spec" do
    visit style_specs_url
    click_on "New style spec"

    fill_in "Piece", with: @style_spec.piece_id
    fill_in "Style", with: @style_spec.style_id
    click_on "Create Style spec"

    assert_text "Style spec was successfully created"
    click_on "Back"
  end

  test "should update Style spec" do
    visit style_spec_url(@style_spec)
    click_on "Edit this style spec", match: :first

    fill_in "Piece", with: @style_spec.piece_id
    fill_in "Style", with: @style_spec.style_id
    click_on "Update Style spec"

    assert_text "Style spec was successfully updated"
    click_on "Back"
  end

  test "should destroy Style spec" do
    visit style_spec_url(@style_spec)
    click_on "Destroy this style spec", match: :first

    assert_text "Style spec was successfully destroyed"
  end
end
