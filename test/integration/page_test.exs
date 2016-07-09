defmodule TestingMyBlog.PageTest do
  use TestingMyBlog.AcceptanceCase, async: true

  test "home page", %{session: session} do
    page = 
      session
      |> visit("/")
      |> find(".jumbotron")

    assert has_text?(page, "Welcome to Phoenix!")
  end
end
