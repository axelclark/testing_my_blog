defmodule TestingMyBlog.Factory do
  use ExMachina.Ecto, repo: TestingMyBlog.Repo

  def post_factory do
    %TestingMyBlog.Post{
      title: sequence(:title, &"My Post #{&1}"),
      body: "This is my post about something",
      author: "Me!"
    }
  end

  def tag_factory do
    %TestingMyBlog.Tag{
      name: sequence(:name, &"Tag #{&1}")
    }
  end

  def with_tag(post, tag_name) do
    insert(:tag, post: post, name: tag_name)
    post
  end
end
