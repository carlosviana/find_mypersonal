defmodule FindmyPersonalWeb.TeacherController do
  use FindmyPersonalWeb, :controller

  alias FindmyPersonal.Teachers

  def index(conn, _params) do
    teachers = Teachers.list_teacher()
    render(conn, "index.html", teachers: teachers)
  end

  def show(conn, %{"id" => id}) do
    teacher = Teachers.get_teacher!(id)
    render(conn, "show.html", teacher: teacher)
  end

end
