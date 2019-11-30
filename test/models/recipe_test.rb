require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "should not save recipe without title" do
    recipe = Recipe.new
    assert_not recipe.save, "Saved the recipe without a title"
  end
end
