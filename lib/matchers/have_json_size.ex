defmodule TestThatJson.ESpec.Matchers.HaveJsonSize do
  use ESpec.Assertions.Interface

  alias TestThatJson.Assertions

  defp match(subject, size) do
    result = Assertions.has_json_size(subject, size)
    {result, result}
  end

  defp success_message(subject, value, _result, positive) do
    has = if positive, do: "has", else: "doesn't have"
    "`#{inspect subject}` #{has} JSON size `#{inspect value}`."
  end

  defp error_message(subject, value, _result, positive) do
    to = if positive, do: "to have", else: "not to have"
    but = if positive, do: "doesn't", else: "does"
    "Expected `#{inspect subject}` #{to} JSON size `#{inspect value}`, but it #{but}."
  end
end
