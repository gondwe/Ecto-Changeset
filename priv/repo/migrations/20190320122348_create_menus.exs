defmodule Hello.Repo.Migrations.CreateMenus do
  use Ecto.Migration

  def change do
    create table(:menus) do
      add :menu, :string

      timestamps()
    end

  end
end
