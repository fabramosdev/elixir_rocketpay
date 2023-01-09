defmodule RocketpayWeb.UsersView do
  alias Rocketpay.User

  def render("create.json", %{user: %User{id: id, name: name, nickname: nickname}}) do
    %{
      message: "User #{name} created with nickname '#{nickname}'. Use this nickname to make transactions in App",
      user: %{
        id: id,
        name: name,
        nickname: nickname
      }
    }
  end
end
