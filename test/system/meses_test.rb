require "application_system_test_case"

class MesesTest < ApplicationSystemTestCase
  setup do
    @mes = meses(:one)
  end

  test "visiting the index" do
    visit meses_url
    assert_selector "h1", text: "Meses"
  end

  test "should create mes" do
    visit meses_url
    click_on "New mes"

    fill_in "Mes", with: @mes.mes
    click_on "Create Mes"

    assert_text "Mes was successfully created"
    click_on "Back"
  end

  test "should update Mes" do
    visit mes_url(@mes)
    click_on "Edit this mes", match: :first

    fill_in "Mes", with: @mes.mes
    click_on "Update Mes"

    assert_text "Mes was successfully updated"
    click_on "Back"
  end

  test "should destroy Mes" do
    visit mes_url(@mes)
    click_on "Destroy this mes", match: :first

    assert_text "Mes was successfully destroyed"
  end
end
