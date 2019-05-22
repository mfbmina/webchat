defmodule WebchatWeb.MessagesController do
  use WebchatWeb, :controller

  alias Webchat.Message

  def index(conn, _params) do
    messages = Repo.all(Message)
    render(conn, "index.html", messages: messages)
  end

  def new(conn, _params) do
    changeset = Message.changeset(%Message{})

    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"message" => attributes}) do
    changeset = Message.changeset(%Message{}, attributes)

    case Repo.insert(changeset) do
      {:ok, _message} ->
        conn
          |> put_flash(:info, "Message posted!")
          |> redirect(to: Routes.messages_path(conn, :index))
      {:error, changeset} ->
        render conn, "new.html", changeset: changeset
    end
  end
end
