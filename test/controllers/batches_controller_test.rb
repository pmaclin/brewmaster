require 'test_helper'

class BatchesControllerTest < ActionController::TestCase
  setup do
    @batch = batches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batch" do
    assert_difference('Batch.count') do
      post :create, batch: { actual_abv: @batch.actual_abv, actual_aroma: @batch.actual_aroma, actual_final_gravity: @batch.actual_final_gravity, actual_flavor_profile: @batch.actual_flavor_profile, actual_ibu: @batch.actual_ibu, actual_original_gravity: @batch.actual_original_gravity, beer_style_id: @batch.beer_style_id, bottle_date: @batch.bottle_date, brew_date: @batch.brew_date, image: @batch.image, recipe_id: @batch.recipe_id, size: @batch.size }
    end

    assert_redirected_to batch_path(assigns(:batch))
  end

  test "should show batch" do
    get :show, id: @batch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @batch
    assert_response :success
  end

  test "should update batch" do
    patch :update, id: @batch, batch: { actual_abv: @batch.actual_abv, actual_aroma: @batch.actual_aroma, actual_final_gravity: @batch.actual_final_gravity, actual_flavor_profile: @batch.actual_flavor_profile, actual_ibu: @batch.actual_ibu, actual_original_gravity: @batch.actual_original_gravity, beer_style_id: @batch.beer_style_id, bottle_date: @batch.bottle_date, brew_date: @batch.brew_date, image: @batch.image, recipe_id: @batch.recipe_id, size: @batch.size }
    assert_redirected_to batch_path(assigns(:batch))
  end

  test "should destroy batch" do
    assert_difference('Batch.count', -1) do
      delete :destroy, id: @batch
    end

    assert_redirected_to batches_path
  end
end
