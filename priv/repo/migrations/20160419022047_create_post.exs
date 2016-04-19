defmodule PhoenixExfileTestApp.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :text
      add :photo, :string

      timestamps
    end

  end
end
