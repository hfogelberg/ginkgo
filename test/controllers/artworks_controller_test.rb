require 'test_helper'

class ArtworksControllerTest < ActionController::TestCase
  setup do
    @artwork = artworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork" do
    assert_difference('Artwork.count') do
      post :create, artwork: { Gallery_id: @artwork.Gallery_id, Status_id: @artwork.Status_id, Technique_id: @artwork.Technique_id, depth: @artwork.depth, description: @artwork.description, height: @artwork.height, name: @artwork.name, width: @artwork.width }
    end

    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should show artwork" do
    get :show, id: @artwork
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artwork
    assert_response :success
  end

  test "should update artwork" do
    patch :update, id: @artwork, artwork: { Gallery_id: @artwork.Gallery_id, Status_id: @artwork.Status_id, Technique_id: @artwork.Technique_id, depth: @artwork.depth, description: @artwork.description, height: @artwork.height, name: @artwork.name, width: @artwork.width }
    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should destroy artwork" do
    assert_difference('Artwork.count', -1) do
      delete :destroy, id: @artwork
    end

    assert_redirected_to artworks_path
  end
end
