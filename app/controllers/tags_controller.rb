class TagsController < ApplicationController


  def create
    @recipe = Recipe.find(params[:recipe_id])
    @tag = @recipe.tags.create(tag_params)
    redirect_to recipe_tag_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @tag = @recipe.tags.find(params[:id])
    @tag.destroy
    redirect_to recipe_tags_path(@recipe)
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
