require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { apellido_materno: @cliente.apellido_materno, apellido_paterno: @cliente.apellido_paterno, correo_electronico: @cliente.correo_electronico, direccion: @cliente.direccion, nombres: @cliente.nombres, telefonos: @cliente.telefonos }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    put :update, id: @cliente, cliente: { apellido_materno: @cliente.apellido_materno, apellido_paterno: @cliente.apellido_paterno, correo_electronico: @cliente.correo_electronico, direccion: @cliente.direccion, nombres: @cliente.nombres, telefonos: @cliente.telefonos }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
