defmodule TestingMyBlog.PostController do
  use TestingMyBlog.Web, :controller

  alias TestingMyBlog.Post

  def index(conn, _params) do
    posts = Post 
      |> Repo.all 
      |> Repo.preload(:tags)
    render(conn, "index.html", posts: posts)
  end
end
