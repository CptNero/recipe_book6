class CommentsController < ApplicationController
  load_and_authorize_resource
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment.user_id = current_user.id
    @comment = @recipe.comments.create(comment_params)

    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to recipe_path(@recipe)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :user_id)
  end
end