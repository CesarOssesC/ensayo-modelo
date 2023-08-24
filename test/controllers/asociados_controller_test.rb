require "test_helper"

class AsociadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asociado = asociados(:one)
  end

  test "should get index" do
    get asociados_url
    assert_response :success
  end

  test "should get new" do
    get new_asociado_url
    assert_response :success
  end

  test "should create asociado" do
    assert_difference("Asociado.count") do
      post asociados_url, params: { asociado: { comuna_id: @asociado.comuna_id, direccion: @asociado.direccion, email: @asociado.email, email_representante: @asociado.email_representante, estado: @asociado.estado, nombre: @asociado.nombre, representante: @asociado.representante, rut: @asociado.rut, telefono: @asociado.telefono, tipo_socio_id: @asociado.tipo_socio_id } }
    end

    assert_redirected_to asociado_url(Asociado.last)
  end

  test "should show asociado" do
    get asociado_url(@asociado)
    assert_response :success
  end

  test "should get edit" do
    get edit_asociado_url(@asociado)
    assert_response :success
  end

  test "should update asociado" do
    patch asociado_url(@asociado), params: { asociado: { comuna_id: @asociado.comuna_id, direccion: @asociado.direccion, email: @asociado.email, email_representante: @asociado.email_representante, estado: @asociado.estado, nombre: @asociado.nombre, representante: @asociado.representante, rut: @asociado.rut, telefono: @asociado.telefono, tipo_socio_id: @asociado.tipo_socio_id } }
    assert_redirected_to asociado_url(@asociado)
  end

  test "should destroy asociado" do
    assert_difference("Asociado.count", -1) do
      delete asociado_url(@asociado)
    end

    assert_redirected_to asociados_url
  end
end
