defmodule HelloWeb.Plug.MenuItems do
  # import Plug.Conn
  alias Hello.Menu

  def init(opts), do: opts

  def call(conn, _opts) do
    Plug.Conn.assign(conn, :menus, Menu.names )
  end
end
