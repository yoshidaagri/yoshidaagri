require 'test_helper'

class TaxfreesControllerTest < ActionController::TestCase
  setup do
    @taxfree = taxfrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxfrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taxfree" do
    assert_difference('Taxfree.count') do
      post :create, taxfree: { birthday: @taxfree.birthday, landingdate: @taxfree.landingdate, name: @taxfree.name, nationality_id: @taxfree.nationality_id, nationality_name: @taxfree.nationality_name, note: @taxfree.note, passport: @taxfree.passport, sex_id: @taxfree.sex_id, taxfreeflg_id: @taxfree.taxfreeflg_id, taxpaymentoffice: @taxfree.taxpaymentoffice, taxpaymentplace: @taxfree.taxpaymentplace, user_id: @taxfree.user_id, user_name: @taxfree.user_name, visastatus_id: @taxfree.visastatus_id }
    end

    assert_redirected_to taxfree_path(assigns(:taxfree))
  end

  test "should show taxfree" do
    get :show, id: @taxfree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taxfree
    assert_response :success
  end

  test "should update taxfree" do
    patch :update, id: @taxfree, taxfree: { birthday: @taxfree.birthday, landingdate: @taxfree.landingdate, name: @taxfree.name, nationality_id: @taxfree.nationality_id, nationality_name: @taxfree.nationality_name, note: @taxfree.note, passport: @taxfree.passport, sex_id: @taxfree.sex_id, taxfreeflg_id: @taxfree.taxfreeflg_id, taxpaymentoffice: @taxfree.taxpaymentoffice, taxpaymentplace: @taxfree.taxpaymentplace, user_id: @taxfree.user_id, user_name: @taxfree.user_name, visastatus_id: @taxfree.visastatus_id }
    assert_redirected_to taxfree_path(assigns(:taxfree))
  end

  test "should destroy taxfree" do
    assert_difference('Taxfree.count', -1) do
      delete :destroy, id: @taxfree
    end

    assert_redirected_to taxfrees_path
  end
end
