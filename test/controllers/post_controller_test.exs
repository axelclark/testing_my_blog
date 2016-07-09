defmodule TestingMyBlog.PostControllerTest do
  use TestingMyBlog.ConnCase

  test "lists all blog posts", %{conn: conn} do
    posts = insert_pair(:post)

    conn = get conn, post_path(conn, :index)

    for post <- posts do
      assert html_response(conn, 200) =~ post.title
    end
  end

  test "list of posts shows the posts' tags", %{conn: conn} do
    tag_name = "elixir"
    build(:post) |> insert |> with_tag(tag_name)

    conn = get conn, post_path(conn, :index)

    assert html_response(conn, 200) =~ tag_name
  end
end
