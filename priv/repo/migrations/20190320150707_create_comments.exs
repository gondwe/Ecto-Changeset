defmodule Hello.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :post_id, references :posts
      add :body, :string

      timestamps()
    end

  end
end
