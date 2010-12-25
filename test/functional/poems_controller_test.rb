require 'test_helper'

class PoemsControllerTest < ActionController::TestCase
  setup do
    @poem = poems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poem" do
    assert_difference('Poem.count') do
      post :create, :poem => @poem.attributes
    end

    assert_redirected_to poem_path(assigns(:poem))
  end

  test "should show poem" do
    get :show, :id => @poem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @poem.to_param
    assert_response :success
  end

  test "should update poem" do
    put :update, :id => @poem.to_param, :poem => @poem.attributes
    assert_redirected_to poem_path(assigns(:poem))
  end

  test "should destroy poem" do
    assert_difference('Poem.count', -1) do
      delete :destroy, :id => @poem.to_param
    end

    assert_redirected_to poems_path
  end
end
