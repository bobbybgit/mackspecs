require "application_system_test_case"

class SpecsTest < ApplicationSystemTestCase
  setup do
    @spec = specs(:one)
  end

  test "visiting the index" do
    visit specs_url
    assert_selector "h1", text: "Specs"
  end

  test "should create spec" do
    visit specs_url
    click_on "New spec"

    fill_in "Last edited", with: @spec.last_edited
    fill_in "Last exported", with: @spec.last_exported
    fill_in "Last printed", with: @spec.last_printed
    fill_in "Style", with: @spec.style_id
    fill_in "User", with: @spec.user_id
    click_on "Create Spec"

    assert_text "Spec was successfully created"
    click_on "Back"
  end

  test "should update Spec" do
    visit spec_url(@spec)
    click_on "Edit this spec", match: :first

    fill_in "Last edited", with: @spec.last_edited
    fill_in "Last exported", with: @spec.last_exported
    fill_in "Last printed", with: @spec.last_printed
    fill_in "Style", with: @spec.style_id
    fill_in "User", with: @spec.user_id
    click_on "Update Spec"

    assert_text "Spec was successfully updated"
    click_on "Back"
  end

  test "should destroy Spec" do
    visit spec_url(@spec)
    click_on "Destroy this spec", match: :first

    assert_text "Spec was successfully destroyed"
  end
end
