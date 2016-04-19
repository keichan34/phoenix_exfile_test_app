defmodule PhoenixExfileTestApp.PageController do
  use PhoenixExfileTestApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
