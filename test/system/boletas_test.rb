require "application_system_test_case"

class BoletasTest < ApplicationSystemTestCase
  setup do
    @boleta = boletas(:one)
  end

  test "visiting the index" do
    visit boletas_url
    assert_selector "h1", text: "Boletas"
  end

  test "should create boleta" do
    visit boletas_url
    click_on "New boleta"

    fill_in "Amount", with: @boleta.amount
    fill_in "Asociado", with: @boleta.asociado_id
    fill_in "Currency", with: @boleta.currency
    fill_in "Estado", with: @boleta.estado
    fill_in "Floworder", with: @boleta.flowOrder
    fill_in "Media", with: @boleta.media
    fill_in "Payer", with: @boleta.payer
    fill_in "Status", with: @boleta.status
    fill_in "Subject", with: @boleta.subject
    fill_in "Tipo pago", with: @boleta.tipo_pago_id
    fill_in "Token", with: @boleta.token
    click_on "Create Boleta"

    assert_text "Boleta was successfully created"
    click_on "Back"
  end

  test "should update Boleta" do
    visit boleta_url(@boleta)
    click_on "Edit this boleta", match: :first

    fill_in "Amount", with: @boleta.amount
    fill_in "Asociado", with: @boleta.asociado_id
    fill_in "Currency", with: @boleta.currency
    fill_in "Estado", with: @boleta.estado
    fill_in "Floworder", with: @boleta.flowOrder
    fill_in "Media", with: @boleta.media
    fill_in "Payer", with: @boleta.payer
    fill_in "Status", with: @boleta.status
    fill_in "Subject", with: @boleta.subject
    fill_in "Tipo pago", with: @boleta.tipo_pago_id
    fill_in "Token", with: @boleta.token
    click_on "Update Boleta"

    assert_text "Boleta was successfully updated"
    click_on "Back"
  end

  test "should destroy Boleta" do
    visit boleta_url(@boleta)
    click_on "Destroy this boleta", match: :first

    assert_text "Boleta was successfully destroyed"
  end
end
