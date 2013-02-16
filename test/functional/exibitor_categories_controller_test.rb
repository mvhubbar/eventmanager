require 'test_helper'

class ExibitorCategoriesControllerTest < ActionController::TestCase
  setup do
    @exibitor_category = exibitor_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exibitor_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exibitor_category" do
    assert_difference('ExibitorCategory.count') do
      post :create, exibitor_category: { name: @exibitor_category.name }
    end

    assert_redirected_to exibitor_category_path(assigns(:exibitor_category))
  end

  test "should show exibitor_category" do
    get :show, id: @exibitor_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exibitor_category
    assert_response :success
  end

  test "should update exibitor_category" do
    put :update, id: @exibitor_category, exibitor_category: { name: @exibitor_category.name }
    assert_redirected_to exibitor_category_path(assigns(:exibitor_category))
  end

  test "should destroy exibitor_category" do
    assert_difference('ExibitorCategory.count', -1) do
      delete :destroy, id: @exibitor_category
    end

    assert_redirected_to exibitor_categories_path
  end
end
