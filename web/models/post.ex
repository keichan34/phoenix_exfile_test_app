defmodule PhoenixExfileTestApp.Post do
  use PhoenixExfileTestApp.Web, :model

  schema "posts" do
    field :title, :string
    field :photo, Exfile.Ecto.File

    timestamps
  end

  @required_fields ~w(title photo)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
