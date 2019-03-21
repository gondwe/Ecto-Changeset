defmodule HelloWeb.PageController do
  use HelloWeb, :controller
  alias Hello.Post
  alias Hello.Repo

  def index(conn, _params) do
    post = Repo.get(Post,1)
    changeset = Post.changeset(post, %{})
    render conn, "index.html", changeset: changeset, post: post
  end

  def save(conn, %{"post"=>changes, "id" => post_id}) do
    post = Repo.get(Post, post_id)

    # save updated changes
    Post.changeset(post, changes) |> Repo.update

    conn
      |> put_flash(:info, "Approved Status Changed")
      |> redirect(to: "/")
  end

  def error(conn, _) do
    render(conn, "error.html", layout: {HelloWeb.LayoutView, "front.html" });
  end
end
