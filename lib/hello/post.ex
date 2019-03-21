defmodule Hello.Post do
  use Ecto.Schema
  import Ecto.Changeset


  schema "posts" do
    field :approved, :boolean, default: false
    field :post, :string
    has_many :comments, Hello.Comment
    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:post, :approved])
    |> validate_required([:post, :approved])
  end

end
