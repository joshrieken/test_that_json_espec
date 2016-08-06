defmodule TestThatJson.ESpec do
  defmacro __using__(_) do
    quote do
      import TestThatJson.Configuration
      import TestThatJson.ESpec.Assertions
    end
  end
end
