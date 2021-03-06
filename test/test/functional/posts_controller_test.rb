require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  def setup
    @post = Post.find 1
  end

  context "on post to :create" do
    setup do
      post :create, :post => {}
    end

    should "name the post 'a great post'" do
      assert_equal 'a great post', assigns(:post).title
    end

    should "give the post a body of '...'" do
      assert_equal '...', assigns(:post).body
    end
  end
end
