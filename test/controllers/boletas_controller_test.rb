require "test_helper"

class BoletasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boleta = boletas(:one)
  end

  test "should get index" do
    get boletas_url
    assert_response :success
  end

  test "should get new" do
    get new_boleta_url
    assert_response :success
  end

  test "should create boleta" do
    assert_difference("Boleta.count") do
      post boletas_url, params: { boleta: { amount: @boleta.amount, asociado_id: @boleta.asociado_id, currency: @boleta.currency, estado: @boleta.estado, flowOrder: @boleta.flowOrder, media: @boleta.media, payer: @boleta.payer, status: @boleta.status, subject: @boleta.subject, tipo_pago_id: @boleta.tipo_pago_id, token: @boleta.token } }
    end

    assert_redirected_to boleta_url(Boleta.last)
  end

  test "should show boleta" do
    get boleta_url(@boleta)
    assert_response :success
  end

  test "should get edit" do
    get edit_boleta_url(@boleta)
    assert_response :success
  end

  test "should update boleta" do
    patch boleta_url(@boleta), params: { boleta: { amount: @boleta.amount, asociado_id: @boleta.asociado_id, currency: @boleta.currency, estado: @boleta.estado, flowOrder: @boleta.flowOrder, media: @boleta.media, payer: @boleta.payer, status: @boleta.status, subject: @boleta.subject, tipo_pago_id: @boleta.tipo_pago_id, token: @boleta.token } }
    assert_redirected_to boleta_url(@boleta)
  end

  test "should destroy boleta" do
    assert_difference("Boleta.count", -1) do
      delete boleta_url(@boleta)
    end

    assert_redirected_to boletas_url
  end
end
