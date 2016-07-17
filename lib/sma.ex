defmodule SMA do
  @moduledoc """
  This module is responsible for calculating simple moving average.

  It accepts list of data items and window size (period) and then returns calculated moving average.
  """

  @doc """
  Calculates SMA from given list
  """
  @spec sma(list, integer) :: list
  def sma(_data, period) when period < 2, do: :error
  def sma(data, period) when is_list(data) and is_integer(period) do
    case (Enum.count(data) < period) do
      true ->
        []
      false ->
        {init_block, rest} = Enum.split(data, period)
        init_block_sum = Enum.sum(init_block)
        init_avg = init_block_sum / period
        _sma(init_block, [], rest, init_block_sum, period, [init_avg])
    end
  end
  def sma(_, _), do: :error

  defp _sma(_, _, [], _, _, averages) do
    Enum.reverse(averages)
  end
  defp _sma([], current_sample, rest, prev_sum, period, averages) do
    _sma(Enum.reverse(current_sample), [], rest, prev_sum, period, averages)
  end
  defp _sma([h_f | f], current_sample, [h_r | r], prev_sum, period, averages) do
    sum = prev_sum - h_f + h_r
    avg = sum / period
    _sma(f, [h_r] ++ current_sample, r, sum, period, [avg] ++ averages)
  end
end
