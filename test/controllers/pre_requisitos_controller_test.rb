require 'test_helper'

class PreRequisitosControllerTest < ActionController::TestCase
  setup do
    @pre_requisito = pre_requisitos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pre_requisitos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pre_requisito" do
    assert_difference('PreRequisito.count') do
      post :create, pre_requisito: { create: @pre_requisito.create, destroy: @pre_requisito.destroy, disciplina_id: @pre_requisito.disciplina_id, pre_requisito_id: @pre_requisito.pre_requisito_id }
    end

    assert_redirected_to pre_requisito_path(assigns(:pre_requisito))
  end

  test "should show pre_requisito" do
    get :show, id: @pre_requisito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pre_requisito
    assert_response :success
  end

  test "should update pre_requisito" do
    patch :update, id: @pre_requisito, pre_requisito: { create: @pre_requisito.create, destroy: @pre_requisito.destroy, disciplina_id: @pre_requisito.disciplina_id, pre_requisito_id: @pre_requisito.pre_requisito_id }
    assert_redirected_to pre_requisito_path(assigns(:pre_requisito))
  end

  test "should destroy pre_requisito" do
    assert_difference('PreRequisito.count', -1) do
      delete :destroy, id: @pre_requisito
    end

    assert_redirected_to pre_requisitos_path
  end
end
