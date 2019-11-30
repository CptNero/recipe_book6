require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "should not save comment without title" do
    comment = Comment.new
    assert_not comment.save, "Saved the comment without a title"
  end
end
