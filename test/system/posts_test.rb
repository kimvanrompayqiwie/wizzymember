require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "A", with: @post.a
    fill_in "Ads", with: @post.ads
    fill_in "B", with: @post.b
    fill_in "C", with: @post.c
    fill_in "Candidates", with: @post.candidates
    fill_in "Company", with: @post.company
    fill_in "D", with: @post.d
    fill_in "Duration", with: @post.duration
    fill_in "E", with: @post.e
    fill_in "F", with: @post.f
    fill_in "Functioncat", with: @post.functioncat
    fill_in "G", with: @post.g
    fill_in "Generation", with: @post.generation
    fill_in "H", with: @post.h
    fill_in "I", with: @post.i
    fill_in "J", with: @post.j
    fill_in "Media", with: @post.media
    fill_in "Offline", with: @post.offline
    fill_in "Online", with: @post.online
    fill_in "Personality", with: @post.personality
    fill_in "Region", with: @post.region
    fill_in "Sectorcat", with: @post.sectorcat
    fill_in "Title", with: @post.title
    fill_in "Type", with: @post.type
    fill_in "Urljob", with: @post.urljob
    fill_in "Views", with: @post.views
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "A", with: @post.a
    fill_in "Ads", with: @post.ads
    fill_in "B", with: @post.b
    fill_in "C", with: @post.c
    fill_in "Candidates", with: @post.candidates
    fill_in "Company", with: @post.company
    fill_in "D", with: @post.d
    fill_in "Duration", with: @post.duration
    fill_in "E", with: @post.e
    fill_in "F", with: @post.f
    fill_in "Functioncat", with: @post.functioncat
    fill_in "G", with: @post.g
    fill_in "Generation", with: @post.generation
    fill_in "H", with: @post.h
    fill_in "I", with: @post.i
    fill_in "J", with: @post.j
    fill_in "Media", with: @post.media
    fill_in "Offline", with: @post.offline
    fill_in "Online", with: @post.online
    fill_in "Personality", with: @post.personality
    fill_in "Region", with: @post.region
    fill_in "Sectorcat", with: @post.sectorcat
    fill_in "Title", with: @post.title
    fill_in "Type", with: @post.type
    fill_in "Urljob", with: @post.urljob
    fill_in "Views", with: @post.views
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
