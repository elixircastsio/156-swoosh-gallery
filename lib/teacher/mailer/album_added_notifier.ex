defmodule Teacher.Mailer.AlbumAddedNotifier do
  use Phoenix.Swoosh,
    view: TeacherWeb.AlbumNotifierView,
    layout: {TeacherWeb.LayoutView, :email}

  def album_added(album) do
    new()
    |> from("noreply@example.com")
    |> to("hello@elixircasts.io")
    |> subject("New album added")
    |> render_body("album_added.html", %{album: album})
  end

end
