defmodule TestThatJson.ESpec.Assertions.HaveOnlyJsonValues do
  use ESpec.Assertions.Interface

  alias TestThatJson.Helpers

  defp match(subject, value) do
    result = Helpers.has_only_json_values(subject, value)
    {result, result}
  end

  defp success_message(subject, value, _result, positive) do
    has = if positive, do: "has only", else: "doesn't have only"
    "`#{inspect subject}` #{has} JSON values `#{inspect value}`."
  end

  defp error_message(subject, value, _result, positive) do
    to = if positive, do: "to have only", else: "not to have only"
    but = if positive, do: "doesn't", else: "does"
    "Expected `#{inspect subject}` #{to} JSON values `#{inspect value}`, but it #{but}."
  end
end
