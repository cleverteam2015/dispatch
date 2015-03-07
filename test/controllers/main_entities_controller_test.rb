require 'test_helper'

class MainEntitiesControllerTest < ActionController::TestCase
  setup do
    @main_entity = main_entities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_entity" do
    assert_difference('MainEntity.count') do
      post :create, main_entity: { address: @main_entity.address, creation_date: @main_entity.creation_date, main_name: @main_entity.main_name, name: @main_entity.name, status: @main_entity.status }
    end

    assert_redirected_to main_entity_path(assigns(:main_entity))
  end

  test "should show main_entity" do
    get :show, id: @main_entity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_entity
    assert_response :success
  end

  test "should update main_entity" do
    patch :update, id: @main_entity, main_entity: { address: @main_entity.address, creation_date: @main_entity.creation_date, main_name: @main_entity.main_name, name: @main_entity.name, status: @main_entity.status }
    assert_redirected_to main_entity_path(assigns(:main_entity))
  end

  test "should destroy main_entity" do
    assert_difference('MainEntity.count', -1) do
      delete :destroy, id: @main_entity
    end

    assert_redirected_to main_entities_path
  end
end
