defmodule TestingMyBlog.Tag do
  use TestingMyBlog.Web, :model

  schema "tags" do
    field :name, :string
    belongs_to :post, TestingMyBlog.Post

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :post_id])
    |> validate_required([:name])
  end
end
