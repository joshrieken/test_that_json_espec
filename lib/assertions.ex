defmodule TestThatJson.ESpec.Assertions do
  alias TestThatJson.ESpec.Assertions.BeJsonEqual

  alias TestThatJson.ESpec.Assertions.HaveJsonKeys
  alias TestThatJson.ESpec.Assertions.HaveOnlyJsonKeys

  alias TestThatJson.ESpec.Assertions.HaveJsonValues
  alias TestThatJson.ESpec.Assertions.HaveOnlyJsonValues

  alias TestThatJson.ESpec.Assertions.HaveJsonProperties
  alias TestThatJson.ESpec.Assertions.HaveOnlyJsonProperties

  alias TestThatJson.ESpec.Assertions.HaveJsonPath

  alias TestThatJson.ESpec.Assertions.HaveJsonType

  alias TestThatJson.ESpec.Assertions.HaveJsonSize

  def be_json_equal(json), do: {BeJsonEqual, json}

  def have_json_keys(value),      do: {HaveJsonKeys,     value}
  def have_only_json_keys(value), do: {HaveOnlyJsonKeys, value}

  def have_json_values(value),      do: {HaveJsonValues,     value}
  def have_only_json_values(value), do: {HaveOnlyJsonValues, value}

  def have_json_properties(value),      do: {HaveJsonProperties,     value}
  def have_only_json_properties(value), do: {HaveOnlyJsonProperties, value}

  def have_json_path(value), do: {HaveJsonPath, value}

  def have_json_type(value), do: {HaveJsonType, value}

  def have_json_size(value), do: {HaveJsonSize, value}
end
