require 'test_helper'

class FarmersControllerTest < ActionController::TestCase
  setup do
    @farmer = farmers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farmers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farmer" do
    assert_difference('Farmer.count') do
      post :create, farmer: { access: @farmer.access, address: @farmer.address, catchcopy: @farmer.catchcopy, facebook: @farmer.facebook, farm_area: @farmer.farm_area, farm_banner: @farmer.farm_banner, farm_name: @farmer.farm_name, farmer_flg: @farmer.farmer_flg, fax: @farmer.fax, googlemap: @farmer.googlemap, management_content: @farmer.management_content, representative: @farmer.representative, tel: @farmer.tel, twitter: @farmer.twitter, user_id: @farmer.user_id, zipcode: @farmer.zipcode }
    end

    assert_redirected_to farmer_path(assigns(:farmer))
  end

  test "should show farmer" do
    get :show, id: @farmer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @farmer
    assert_response :success
  end

  test "should update farmer" do
    patch :update, id: @farmer, farmer: { access: @farmer.access, address: @farmer.address, catchcopy: @farmer.catchcopy, facebook: @farmer.facebook, farm_area: @farmer.farm_area, farm_banner: @farmer.farm_banner, farm_name: @farmer.farm_name, farmer_flg: @farmer.farmer_flg, fax: @farmer.fax, googlemap: @farmer.googlemap, management_content: @farmer.management_content, representative: @farmer.representative, tel: @farmer.tel, twitter: @farmer.twitter, user_id: @farmer.user_id, zipcode: @farmer.zipcode }
    assert_redirected_to farmer_path(assigns(:farmer))
  end

  test "should destroy farmer" do
    assert_difference('Farmer.count', -1) do
      delete :destroy, id: @farmer
    end

    assert_redirected_to farmers_path
  end
end
