require "application_system_test_case"

class BoletaMesesTest < ApplicationSystemTestCase
  setup do
    @boleta_mes = boletas_meses(:one)
  end

  test "visiting the index" do
    visit boletas_meses_url
    assert_selector "h1", text: "Boleta meses"
  end

  test "should create boleta mes" do
    visit boletas_meses_url
    click_on "New boleta mes"

    fill_in "Boleta", with: @boleta_mes.boleta_id
    fill_in "Mes", with: @boleta_mes.mes_id
    fill_in "Year", with: @boleta_mes.year_id
    click_on "Create Boleta mes"

    assert_text "Boleta mes was successfully created"
    click_on "Back"
  end

  test "should update Boleta mes" do
    visit boleta_mes_url(@boleta_mes)
    click_on "Edit this boleta mes", match: :first

    fill_in "Boleta", with: @boleta_mes.boleta_id
    fill_in "Mes", with: @boleta_mes.mes_id
    fill_in "Year", with: @boleta_mes.year_id
    click_on "Update Boleta mes"

    assert_text "Boleta mes was successfully updated"
    click_on "Back"
  end

  test "should destroy Boleta mes" do
    visit boleta_mes_url(@boleta_mes)
    click_on "Destroy this boleta mes", match: :first

    assert_text "Boleta mes was successfully destroyed"
  end
end
