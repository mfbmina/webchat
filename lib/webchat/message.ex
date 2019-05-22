defmodule Webchat.Message do
  use Ecto.Schema
  import Ecto.Changeset

  schema "messages" do
    field :content, :string
    field :user_id, :string

    timestamps()
  end

  @doc false
  def changeset(message, attrs \\ %{}) do
    message
    |> cast(attrs, [:content])
    |> validate_required([:content])
  end
end
