defmodule MadeAtEpsWeb.GalleryControllerTest do
  use MadeAtEpsWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    photos = PhotoStore.all()

    assert conn.assigns.photos == photos
  end
end
