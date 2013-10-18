require 'test_helper'

class TurtlesControllerTest < ActionController::TestCase
  setup do
    @turtle = turtles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:turtles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create turtle" do
    assert_difference('Turtle.count') do
      post :create, turtle: {  }
    end

    assert_redirected_to turtle_path(assigns(:turtle))
  end

  test "should show turtle" do
    get :show, id: @turtle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @turtle
    assert_response :success
  end

  test "should update turtle" do
    patch :update, id: @turtle, turtle: {  }
    assert_redirected_to turtle_path(assigns(:turtle))
  end

  test "should destroy turtle" do
    assert_difference('Turtle.count', -1) do
      delete :destroy, id: @turtle
    end

    assert_redirected_to turtles_path
  end
end
