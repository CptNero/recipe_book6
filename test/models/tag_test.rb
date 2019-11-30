require 'test_helper'

class TagTest < ActiveSupport::TestCase
  test "should not save tag without a name" do
    tag = Tag.new
    assert_not tag.save, "Saved the tag without a name"
  end
end
