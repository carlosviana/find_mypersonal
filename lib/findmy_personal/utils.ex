defmodule FindmyPersonal.Utils do
  @moduledoc """
  false
  """
  def convert_br(date) do
    "#{date.day}/#{date.month}/#{date.year}"
  end

  def age(date) do
    today = Date.utc_today()
    age = today.year - date.year
    month = today.month - date.month

    case month < 0 || (month == 0 && today.day <= date.day) do
      true -> age - 1
      false -> age
    end
  end
end
