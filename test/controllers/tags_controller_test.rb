require 'test_helper'

class TagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tags_url
    assert_response :success
  end

  setup do
    @tag = tags(:one)
  end


  teardown do
    # when 
    Rails.cache.clear
  end

  test "should show tag" do
    get tag_url(@tag)
    assert_response :success
  end

  test "should destroy tag" do
    assert_difference('tag.count', -1) do
      delete tag_url(@tag)
    end

    assert_redirected_to tags_path
  end

  test "should update tag" do
    patch tag_url(@tag), params: { tag: { title: "updated" } }

    assert_redirected_to tag_path(@tag)
    @tag.reload
    assert_equal "updated", @tag.title
  end
end
