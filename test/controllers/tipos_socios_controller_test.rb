require "test_helper"

class TiposSociosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_socio = tipos_socios(:one)
  end

  test "should get index" do
    get tipos_socios_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_socio_url
    assert_response :success
  end

  test "should create tipo_socio" do
    assert_difference("TipoSocio.count") do
      post tipos_socios_url, params: { tipo_socio: { tipo: @tipo_socio.tipo, tipo_colaborador: @tipo_socio.tipo_colaborador } }
    end

    assert_redirected_to tipo_socio_url(TipoSocio.last)
  end

  test "should show tipo_socio" do
    get tipo_socio_url(@tipo_socio)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_socio_url(@tipo_socio)
    assert_response :success
  end

  test "should update tipo_socio" do
    patch tipo_socio_url(@tipo_socio), params: { tipo_socio: { tipo: @tipo_socio.tipo, tipo_colaborador: @tipo_socio.tipo_colaborador } }
    assert_redirected_to tipo_socio_url(@tipo_socio)
  end

  test "should destroy tipo_socio" do
    assert_difference("TipoSocio.count", -1) do
      delete tipo_socio_url(@tipo_socio)
    end

    assert_redirected_to tipos_socios_url
  end
end
