# ex_sma

Simple Moving Average calculation in Elixir

### Installation

Add sma in the list of dependencies as below:

```
def deps do
  [{:sma, "~> 0.1"}]
  end
```

or directly from github

```
def deps do
  [{:sma, github: "techgaun/ex_sma"}]
end
```

### Usage

```elixir
import SMA
sma([], 1)
# :error

sma([1,2,3,4,5], 2)
[1.5, 2.5, 3.5, 4.5]
```
