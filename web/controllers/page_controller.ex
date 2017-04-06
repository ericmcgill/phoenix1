defmodule Phoenix1.PageController do
  use Phoenix1.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
