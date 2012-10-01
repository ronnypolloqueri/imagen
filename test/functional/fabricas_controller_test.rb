require 'test_helper'

class FabricasControllerTest < ActionController::TestCase
  setup do
    @fabrica = fabricas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fabricas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fabrica" do
    assert_difference('Fabrica.count') do
      post :create, fabrica: { correo_electronico: @fabrica.correo_electronico, direccion: @fabrica.direccion, nombre_comercial: @fabrica.nombre_comercial, razon_social: @fabrica.razon_social, representante: @fabrica.representante, ruc: @fabrica.ruc, telefono: @fabrica.telefono }
    end

    assert_redirected_to fabrica_path(assigns(:fabrica))
  end

  test "should show fabrica" do
    get :show, id: @fabrica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fabrica
    assert_response :success
  end

  test "should update fabrica" do
    put :update, id: @fabrica, fabrica: { correo_electronico: @fabrica.correo_electronico, direccion: @fabrica.direccion, nombre_comercial: @fabrica.nombre_comercial, razon_social: @fabrica.razon_social, representante: @fabrica.representante, ruc: @fabrica.ruc, telefono: @fabrica.telefono }
    assert_redirected_to fabrica_path(assigns(:fabrica))
  end

  test "should destroy fabrica" do
    assert_difference('Fabrica.count', -1) do
      delete :destroy, id: @fabrica
    end

    assert_redirected_to fabricas_path
  end
end
