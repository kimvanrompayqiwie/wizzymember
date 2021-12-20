require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { a: @post.a, ads: @post.ads, b: @post.b, c: @post.c, candidates: @post.candidates, company: @post.company, d: @post.d, duration: @post.duration, e: @post.e, f: @post.f, functioncat: @post.functioncat, g: @post.g, generation: @post.generation, h: @post.h, i: @post.i, j: @post.j, media: @post.media, offline: @post.offline, online: @post.online, personality: @post.personality, region: @post.region, sectorcat: @post.sectorcat, title: @post.title, type: @post.type, urljob: @post.urljob, views: @post.views } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { a: @post.a, ads: @post.ads, b: @post.b, c: @post.c, candidates: @post.candidates, company: @post.company, d: @post.d, duration: @post.duration, e: @post.e, f: @post.f, functioncat: @post.functioncat, g: @post.g, generation: @post.generation, h: @post.h, i: @post.i, j: @post.j, media: @post.media, offline: @post.offline, online: @post.online, personality: @post.personality, region: @post.region, sectorcat: @post.sectorcat, title: @post.title, type: @post.type, urljob: @post.urljob, views: @post.views } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
