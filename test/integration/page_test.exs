defmodule TestingMyBlog.PageTest do
  use TestingMyBlog.AcceptanceCase, async: true

  test "home page", %{session: session} do
    visit(session, "/")

    assert has_text?(session, "Welcome to Phoenix!")
  end
end
