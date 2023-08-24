require "application_system_test_case"

class AsociadosTest < ApplicationSystemTestCase
  setup do
    @asociado = asociados(:one)
  end

  test "visiting the index" do
    visit asociados_url
    assert_selector "h1", text: "Asociados"
  end

  test "should create asociado" do
    visit asociados_url
    click_on "New asociado"

    fill_in "Comuna", with: @asociado.comuna_id
    fill_in "Direccion", with: @asociado.direccion
    fill_in "Email", with: @asociado.email
    fill_in "Email representante", with: @asociado.email_representante
    fill_in "Estado", with: @asociado.estado
    fill_in "Nombre", with: @asociado.nombre
    fill_in "Representante", with: @asociado.representante
    fill_in "Rut", with: @asociado.rut
    fill_in "Telefono", with: @asociado.telefono
    fill_in "Tipo socio", with: @asociado.tipo_socio_id
    click_on "Create Asociado"

    assert_text "Asociado was successfully created"
    click_on "Back"
  end

  test "should update Asociado" do
    visit asociado_url(@asociado)
    click_on "Edit this asociado", match: :first

    fill_in "Comuna", with: @asociado.comuna_id
    fill_in "Direccion", with: @asociado.direccion
    fill_in "Email", with: @asociado.email
    fill_in "Email representante", with: @asociado.email_representante
    fill_in "Estado", with: @asociado.estado
    fill_in "Nombre", with: @asociado.nombre
    fill_in "Representante", with: @asociado.representante
    fill_in "Rut", with: @asociado.rut
    fill_in "Telefono", with: @asociado.telefono
    fill_in "Tipo socio", with: @asociado.tipo_socio_id
    click_on "Update Asociado"

    assert_text "Asociado was successfully updated"
    click_on "Back"
  end

  test "should destroy Asociado" do
    visit asociado_url(@asociado)
    click_on "Destroy this asociado", match: :first

    assert_text "Asociado was successfully destroyed"
  end
end
