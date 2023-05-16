require "test_helper"

class StyleSpecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @style_spec = style_specs(:one)
  end

  test "should get index" do
    get style_specs_url
    assert_response :success
  end

  test "should get new" do
    get new_style_spec_url
    assert_response :success
  end

  test "should create style_spec" do
    assert_difference("StyleSpec.count") do
      post style_specs_url, params: { style_spec: { piece_id: @style_spec.piece_id, style_id: @style_spec.style_id } }
    end

    assert_redirected_to style_spec_url(StyleSpec.last)
  end

  test "should show style_spec" do
    get style_spec_url(@style_spec)
    assert_response :success
  end

  test "should get edit" do
    get edit_style_spec_url(@style_spec)
    assert_response :success
  end

  test "should update style_spec" do
    patch style_spec_url(@style_spec), params: { style_spec: { piece_id: @style_spec.piece_id, style_id: @style_spec.style_id } }
    assert_redirected_to style_spec_url(@style_spec)
  end

  test "should destroy style_spec" do
    assert_difference("StyleSpec.count", -1) do
      delete style_spec_url(@style_spec)
    end

    assert_redirected_to style_specs_url
  end
end
