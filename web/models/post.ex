defmodule TestingMyBlog.Post do
  use TestingMyBlog.Web, :model

  schema "posts" do
    field :title, :string
    field :body, :string
    field :author, :string
    has_many :tags, TestingMyBlog.Tag

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body, :author])
    |> validate_required([:title, :body, :author])
  end
end
