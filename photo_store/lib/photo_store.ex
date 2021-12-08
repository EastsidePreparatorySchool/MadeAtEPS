defmodule PhotoStore do
  @moduledoc """
  Documentation for `PhotoStore`.
  """
  alias PhotoStore.Photo
  @doc """
  Hello world.

  ## Examples

      iex> PhotoStore.all()
      [
        %PhotoStore.Photo{name: "Motor", url: "https://i0.wp.com/makezine.com/wp-content/uploads/2013/08/makerspace-pic.jpeg"},
        %PhotoStore.Photo{name: "Lego", url: "https://cdn.shopify.com/s/files/1/1231/9660/files/IMG_1544_1024x1024_1abbd71a-a5cf-4e80-8369-fbbd0e78850e_1024x1024.JPG"}
      ]

  """
  def all do
    [
      %Photo{name: "Motor", url: "https://i0.wp.com/makezine.com/wp-content/uploads/2013/08/makerspace-pic.jpeg"},
      %Photo{name: "Lego", url: "https://cdn.shopify.com/s/files/1/1231/9660/files/IMG_1544_1024x1024_1abbd71a-a5cf-4e80-8369-fbbd0e78850e_1024x1024.JPG"}
    ]
  end
end
