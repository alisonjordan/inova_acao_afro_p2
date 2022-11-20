require "test_helper"

class CriticasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @critica = criticas(:one)
  end

  test "should get index" do
    get criticas_url
    assert_response :success
  end

  test "should get new" do
    get new_critica_url
    assert_response :success
  end

  test "should create critica" do
    assert_difference("Critica.count") do
      post criticas_url, params: { critica: { Filme_id: @critica.Filme_id, comentario: @critica.comentario, esta_aprovado: @critica.esta_aprovado } }
    end

    assert_redirected_to critica_url(Critica.last)
  end

  test "should show critica" do
    get critica_url(@critica)
    assert_response :success
  end

  test "should get edit" do
    get edit_critica_url(@critica)
    assert_response :success
  end

  test "should update critica" do
    patch critica_url(@critica), params: { critica: { Filme_id: @critica.Filme_id, comentario: @critica.comentario, esta_aprovado: @critica.esta_aprovado } }
    assert_redirected_to critica_url(@critica)
  end

  test "should destroy critica" do
    assert_difference("Critica.count", -1) do
      delete critica_url(@critica)
    end

    assert_redirected_to criticas_url
  end
end
