require 'test_helper'

class ArctEditsControllerTest < ActionController::TestCase
  setup do
    @arct_edit = arct_edits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arct_edits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arct_edit" do
    assert_difference('ArctEdit.count') do
      post :create, arct_edit: { text: @arct_edit.text, title: @arct_edit.title }
    end

    assert_redirected_to arct_edit_path(assigns(:arct_edit))
  end

  test "should show arct_edit" do
    get :show, id: @arct_edit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arct_edit
    assert_response :success
  end

  test "should update arct_edit" do
    patch :update, id: @arct_edit, arct_edit: { text: @arct_edit.text, title: @arct_edit.title }
    assert_redirected_to arct_edit_path(assigns(:arct_edit))
  end

  test "should destroy arct_edit" do
    assert_difference('ArctEdit.count', -1) do
      delete :destroy, id: @arct_edit
    end

    assert_redirected_to arct_edits_path
  end
end
