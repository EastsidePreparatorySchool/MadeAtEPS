defmodule MadeAtEpsWeb.GalleryController do
  use MadeAtEpsWeb, :controller

  def index(conn, _params) do
    conn
    |> assign(:photos, PhotoStore.all())
    |> render("index.html")
  end
end
