require 'test_helper'

class PartitesControllerTest < ActionController::TestCase
  setup do
    @partite = partites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partite" do
    assert_difference('Partite.count') do
      post :create, partite: { data: @partite.data, p1: @partite.p1, p2: @partite.p2, result: @partite.result }
    end

    assert_redirected_to partite_path(assigns(:partite))
  end

  test "should show partite" do
    get :show, id: @partite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partite
    assert_response :success
  end

  test "should update partite" do
    put :update, id: @partite, partite: { data: @partite.data, p1: @partite.p1, p2: @partite.p2, result: @partite.result }
    assert_redirected_to partite_path(assigns(:partite))
  end

  test "should destroy partite" do
    assert_difference('Partite.count', -1) do
      delete :destroy, id: @partite
    end

    assert_redirected_to partites_path
  end
end
