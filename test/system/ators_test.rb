require "application_system_test_case"

class AtorsTest < ApplicationSystemTestCase
  setup do
    @ator = ators(:one)
  end

  test "visiting the index" do
    visit ators_url
    assert_selector "h1", text: "Ators"
  end

  test "should create ator" do
    visit ators_url
    click_on "New ator"

    fill_in "Ano nascimento", with: @ator.ano_nascimento
    fill_in "Email", with: @ator.email
    fill_in "Nome", with: @ator.nome
    click_on "Create Ator"

    assert_text "Ator was successfully created"
    click_on "Back"
  end

  test "should update Ator" do
    visit ator_url(@ator)
    click_on "Edit this ator", match: :first

    fill_in "Ano nascimento", with: @ator.ano_nascimento
    fill_in "Email", with: @ator.email
    fill_in "Nome", with: @ator.nome
    click_on "Update Ator"

    assert_text "Ator was successfully updated"
    click_on "Back"
  end

  test "should destroy Ator" do
    visit ator_url(@ator)
    click_on "Destroy this ator", match: :first

    assert_text "Ator was successfully destroyed"
  end
end
