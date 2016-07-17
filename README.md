# ex_sma [![Hex version](https://img.shields.io/hexpm/v/sma.svg "Hex version")](https://hex.pm/packages/sma) ![Hex downloads](https://img.shields.io/hexpm/dt/sma.svg "Hex downloads") [![Build Status](https://semaphoreci.com/api/v1/samaracharya/ex_sma/branches/master/badge.svg)](https://semaphoreci.com/samaracharya/ex_sma) [![Coverage Status](https://coveralls.io/repos/github/techgaun/ex_sma/badge.svg?branch=master)](https://coveralls.io/github/techgaun/ex_sma?branch=master)

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
