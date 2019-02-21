defmodule TL.Web.PageController do
  use TL.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
