# Test That JSON! ...for ESpec

Provides [Test That JSON!](https://github.com/facto/test_that_json) matchers for use with [ESpec](https://github.com/antonmi/espec).

[![Build Status](https://travis-ci.org/facto/test_that_json_espec.svg?branch=master)](https://travis-ci.org/facto/test_that_json_espec)
[![Inline docs](http://inch-ci.org/github/facto/test_that_json_espec.svg)](http://inch-ci.org/github/facto/test_that_json_espec)


## Matchers

- [x] `be_json_equal`
- [x] `have_json_keys`
- [x] `have_only_json_keys`
- [x] `have_json_values`
- [x] `have_only_json_values`
- [x] `have_json_properties`
- [x] `have_only_json_properties`
- [x] `have_json_path`
- [ ] `have_json_type`
- [ ] `have_json_size`


## Configuration

See Test That JSON!'s configuration [instructions](https://github.com/facto/test_that_json#configuration).


## Example

### Matchers

```elixir
defmodule MyProject.ExampleSpec
  use ESpec
  use TestThatJson.ESpec

  import TestThatJson.Helpers # totally optional, but maybe useful

  describe "verifying JSON key presence" do
    subject do: json

    let :json do
      load_json("spec/support/json/valid.json") # example helper use
    end

    it do: has_json_keys(["hello", "world"])
  end
end
```


## Installation

Add `test_that_json_espec` as a test-only dependency in `mix.exs`:

```elixir
def deps do
  [
    {:test_that_json_espec, "~> 0.1.0", only: :test},
  ]
end
```


## Contributing

1. Before opening a pull request, please open an issue first.
2. Do the usual fork/add/fix/run tests dance, or whatever tickles your fancy. Tests are highly encouraged.
3. Open a PR.
4. Treat yourself. You deserve it.


## License

See the [LICENSE](LICENSE.md) file for license rights and limitations (MIT).
