defmodule TestThatJson.ESpec.Matchers.HaveJsonType do
  use ESpec.Assertions.Interface

  alias TestThatJson.Assertions

  defp match(subject, type) do
    result = Assertions.has_json_type(subject, type)
    {result, result}
  end

  defp success_message(subject, value, _result, positive) do
    has = if positive, do: "has", else: "doesn't have"
    "`#{inspect subject}` #{has} JSON type `#{inspect value}`."
  end

  defp error_message(subject, value, _result, positive) do
    to = if positive, do: "to have", else: "not to have"
    but = if positive, do: "doesn't", else: "does"
    "Expected `#{inspect subject}` #{to} JSON type `#{inspect value}`, but it #{but}."
  end
end
