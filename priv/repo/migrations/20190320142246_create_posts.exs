defmodule Hello.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :post, :string
      add :approved, :boolean, default: false, null: false

      timestamps()
    end

  end
end
