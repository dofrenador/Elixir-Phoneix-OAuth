defmodule DiscussWeb.Plugs.RequireAuth do

  import Plug.Conn
  import Phoenix.Controller

  alias DiscussWeb.Router.Helpers

  def init(_params) do #this is required, even if we dont need to use it
  end

  def call(conn, _params) do
    if conn.assigns[:user] do
      conn
    else
      conn
      |> put_flash(:error, "You must be logged in")
      |> redirect(to: Helpers.topic_path(conn, :index))
      |> halt()
    end
  end

end
