defmodule Hello.Menu do
  use Ecto.Schema
  import Ecto.Query
  import Ecto.Changeset
  alias Hello.Repo

  schema "menus" do
    field :menu, :string

    timestamps()
  end

  def names, do: Repo.all(from m in "menus", select: m.menu)

  @doc false
  def changeset(menu, attrs) do
    menu
    |> cast(attrs, [:menu])
    |> validate_required([:menu])
  end
end
