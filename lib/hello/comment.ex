defmodule Hello.Comment do
  use Ecto.Schema
  import Ecto.Changeset


  schema "comments" do
    field :body, :string
    timestamps()
    belongs_to :post, Hello.Post
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:post_id, :body])
    |> validate_required([:post_id, :body])
  end
end
