require 'test_helper'

class RespostaPagsegurosControllerTest < ActionController::TestCase
  setup do
    @resposta_pagseguro = resposta_pagseguros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resposta_pagseguros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resposta_pagseguro" do
    assert_difference('RespostaPagseguro.count') do
      post :create, resposta_pagseguro: {  }
    end

    assert_redirected_to resposta_pagseguro_path(assigns(:resposta_pagseguro))
  end

  test "should show resposta_pagseguro" do
    get :show, id: @resposta_pagseguro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resposta_pagseguro
    assert_response :success
  end

  test "should update resposta_pagseguro" do
    patch :update, id: @resposta_pagseguro, resposta_pagseguro: {  }
    assert_redirected_to resposta_pagseguro_path(assigns(:resposta_pagseguro))
  end

  test "should destroy resposta_pagseguro" do
    assert_difference('RespostaPagseguro.count', -1) do
      delete :destroy, id: @resposta_pagseguro
    end

    assert_redirected_to resposta_pagseguros_path
  end
end
