defmodule ApusLandingWeb.PageController do
  use ApusLandingWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
