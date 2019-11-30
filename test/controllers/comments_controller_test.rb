require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comments_url
    assert_response :success
  end

  setup do
    @comment = comments(:one)
  end


  teardown do
    # when 
    Rails.cache.clear
  end

  test "should show comment" do
    get comment_url(@comment)
    assert_response :success
  end

  test "should destroy comment" do
    assert_difference('comment.count', -1) do
      delete comment_url(@comment)
    end

    assert_redirected_to comments_path
  end

  test "should update comment" do
    patch comment_url(@comment), params: { comment: { title: "updated" } }

    assert_redirected_to comment_path(@comment)
    @comment.reload
    assert_equal "updated", @comment.title
  end
end
