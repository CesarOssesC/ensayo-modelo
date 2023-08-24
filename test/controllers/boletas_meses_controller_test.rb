require "test_helper"

class BoletasMesesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boleta_mes = boletas_meses(:one)
  end

  test "should get index" do
    get boletas_meses_url
    assert_response :success
  end

  test "should get new" do
    get new_boleta_mes_url
    assert_response :success
  end

  test "should create boleta_mes" do
    assert_difference("BoletaMes.count") do
      post boletas_meses_url, params: { boleta_mes: { boleta_id: @boleta_mes.boleta_id, mes_id: @boleta_mes.mes_id, year_id: @boleta_mes.year_id } }
    end

    assert_redirected_to boleta_mes_url(BoletaMes.last)
  end

  test "should show boleta_mes" do
    get boleta_mes_url(@boleta_mes)
    assert_response :success
  end

  test "should get edit" do
    get edit_boleta_mes_url(@boleta_mes)
    assert_response :success
  end

  test "should update boleta_mes" do
    patch boleta_mes_url(@boleta_mes), params: { boleta_mes: { boleta_id: @boleta_mes.boleta_id, mes_id: @boleta_mes.mes_id, year_id: @boleta_mes.year_id } }
    assert_redirected_to boleta_mes_url(@boleta_mes)
  end

  test "should destroy boleta_mes" do
    assert_difference("BoletaMes.count", -1) do
      delete boleta_mes_url(@boleta_mes)
    end

    assert_redirected_to boletas_meses_url
  end
end
