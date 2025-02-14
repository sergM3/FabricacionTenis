require "test_helper"

class TenisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tenis_index_url
    assert_response :success
  end

  test "should get show" do
    get tenis_show_url
    assert_response :success
  end

  test "should get piezas" do
    get tenis_piezas_url
    assert_response :success
  end

  test "should get ensamblaje" do
    get tenis_ensamblaje_url
    assert_response :success
  end
end
