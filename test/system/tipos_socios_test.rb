require "application_system_test_case"

class TipoSociosTest < ApplicationSystemTestCase
  setup do
    @tipo_socio = tipos_socios(:one)
  end

  test "visiting the index" do
    visit tipos_socios_url
    assert_selector "h1", text: "Tipo socios"
  end

  test "should create tipo socio" do
    visit tipos_socios_url
    click_on "New tipo socio"

    fill_in "Tipo", with: @tipo_socio.tipo
    fill_in "Tipo colaborador", with: @tipo_socio.tipo_colaborador
    click_on "Create Tipo socio"

    assert_text "Tipo socio was successfully created"
    click_on "Back"
  end

  test "should update Tipo socio" do
    visit tipo_socio_url(@tipo_socio)
    click_on "Edit this tipo socio", match: :first

    fill_in "Tipo", with: @tipo_socio.tipo
    fill_in "Tipo colaborador", with: @tipo_socio.tipo_colaborador
    click_on "Update Tipo socio"

    assert_text "Tipo socio was successfully updated"
    click_on "Back"
  end

  test "should destroy Tipo socio" do
    visit tipo_socio_url(@tipo_socio)
    click_on "Destroy this tipo socio", match: :first

    assert_text "Tipo socio was successfully destroyed"
  end
end
