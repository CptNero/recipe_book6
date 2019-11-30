require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recipes_url
    assert_response :success
  end

  setup do
    @recipe = recipes(:one)
  end


  teardown do
    # when
    Rails.cache.clear
  end

  test "should show recipe" do
    get recipe_url(@recipe)
    assert_response :success
  end

  test "should destroy recipe" do
    assert_difference('recipe.count', -1) do
      delete recipe_url(@recipe)
    end

    assert_redirected_to recipes_path
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { title: "updated" } }

    assert_redirected_to recipe_path(@recipe)
    @recipe.reload
    assert_equal "updated", @recipe.title
  end

end
