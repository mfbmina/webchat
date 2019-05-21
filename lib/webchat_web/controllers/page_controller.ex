defmodule WebchatWeb.PageController do
  use WebchatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
