require 'test_helper'

class ExibitorsControllerTest < ActionController::TestCase
  setup do
    @exibitor = exibitors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exibitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exibitor" do
    assert_difference('Exibitor.count') do
      post :create, exibitor: { description: @exibitor.description, exibitor_category_id: @exibitor.exibitor_category_id, name: @exibitor.name, sponsor_id: @exibitor.sponsor_id }
    end

    assert_redirected_to exibitor_path(assigns(:exibitor))
  end

  test "should show exibitor" do
    get :show, id: @exibitor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exibitor
    assert_response :success
  end

  test "should update exibitor" do
    put :update, id: @exibitor, exibitor: { description: @exibitor.description, exibitor_category_id: @exibitor.exibitor_category_id, name: @exibitor.name, sponsor_id: @exibitor.sponsor_id }
    assert_redirected_to exibitor_path(assigns(:exibitor))
  end

  test "should destroy exibitor" do
    assert_difference('Exibitor.count', -1) do
      delete :destroy, id: @exibitor
    end

    assert_redirected_to exibitors_path
  end
end
