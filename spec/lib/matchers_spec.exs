defmodule TestThatJson.ESpec.MatchersSpec do
  use ESpec
  use TestThatJson.ESpec

  subject do: json

  describe "be_json_equal" do
    let :json, do: "[1,2,3]"

    it do: should be_json_equal(json)
  end

  describe "have_json_keys" do
    let :json do
      """
      {
        "key1": "data",
        "key2": "data"
      }
      """
    end

    it do: should have_json_keys(["key1", "key2"])
  end

  describe "have_only_json_keys" do
    let :json do
      """
      {
        "key1": "data",
        "key2": "data"
      }
      """
    end

    it do: should have_only_json_keys(["key1", "key2"])
  end

  describe "have_json_values" do
    let :json do
      """
      {
        "key1": "data",
        "key2": "data"
      }
      """
    end

    it do: should have_json_values(["data", "data"])
  end

  describe "have_only_json_values" do
    let :json do
      """
      {
        "key1": "data",
        "key2": "data"
      }
      """
    end

    it do: should have_only_json_values(["data", "data"])
  end

  describe "have_json_properties" do
    let :json do
      """
      {
        "key1": "data",
        "key2": "data"
      }
      """
    end

    it do: should have_json_properties(%{"key1" => "data", "key2" => "data"})
  end

  describe "have_only_json_properties" do
    let :json do
      """
      {
        "key1": "data",
        "key2": "data"
      }
      """
    end

    it do: should have_only_json_properties(%{"key1" => "data", "key2" => "data"})
  end

  describe "have_json_path" do
    let :json do
      """
      {
        "key1": "data",
        "key2": "data"
      }
      """
    end

    it do: should have_json_path("key1")
  end

  describe "have_json_type" do
    let :json do
      """
      {
        "key1": "data",
        "key2": "data"
      }
      """
    end

    it do: should have_json_type(:object)
  end

  describe "have_json_size" do
    let :json do
      """
      {
        "key1": "data",
        "key2": "data"
      }
      """
    end

    it do: should have_json_size(2)
  end
end
