require "application_system_test_case"

class TipoPagosTest < ApplicationSystemTestCase
  setup do
    @tipo_pago = tipos_pagos(:one)
  end

  test "visiting the index" do
    visit tipos_pagos_url
    assert_selector "h1", text: "Tipo pagos"
  end

  test "should create tipo pago" do
    visit tipos_pagos_url
    click_on "New tipo pago"

    fill_in "Tipo", with: @tipo_pago.tipo
    click_on "Create Tipo pago"

    assert_text "Tipo pago was successfully created"
    click_on "Back"
  end

  test "should update Tipo pago" do
    visit tipo_pago_url(@tipo_pago)
    click_on "Edit this tipo pago", match: :first

    fill_in "Tipo", with: @tipo_pago.tipo
    click_on "Update Tipo pago"

    assert_text "Tipo pago was successfully updated"
    click_on "Back"
  end

  test "should destroy Tipo pago" do
    visit tipo_pago_url(@tipo_pago)
    click_on "Destroy this tipo pago", match: :first

    assert_text "Tipo pago was successfully destroyed"
  end
end
