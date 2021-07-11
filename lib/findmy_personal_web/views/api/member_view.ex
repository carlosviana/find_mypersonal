defmodule FindmyPersonalWeb.Api.MemberView do
  use FindmyPersonalWeb, :view

  def render("index.json", %{members: members}) do
    %{data: render_many(members, __MODULE__, "member.json")}
  end

  def render("show.json", %{member: member}) do
    %{data: render_one(member, __MODULE__, "member.json")}
  end

  def render("member.json", %{member: member}) do
    %{
      id: member.id,
      birth_date: member.birth_date,
      blood: member.blood,
      email: member.email,
      height: member.height,
      name: member.name,
      weight: member.weight
    }
  end
end
