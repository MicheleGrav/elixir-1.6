# I'm thinking of a number between 1 and 1000…
# The most efficient way to find the number is to guess halfway between the low
# and high numbers of the range. If our guess is too big, then the answer lies
# between the bottom of the range and one less than our guess. If it is too small,
# then the answer lies between one more than our guess and the end of the range.
# Code this up. Your API will be ​guess(actual, range), where ​range is an
# Elixir range.
# Your output should look similar to:
# iex> Chop.guess(273, 1..1000)
# Is it 500
# Is it 250
# Is it 375
# Is it 312
# Is it 281
# Is it 265
# Is it 273
# 273

defmodule ModulesAndFunctions6 do
  def guess(number, range = min..max) do
    guess = div(min + max, 2)
    IO.puts "Is it #{guess}"
    _guess(number, guess, range)
  end

  def _guess(number, number, _) do
    IO.puts "#{number}"
  end

  def _guess(number, guess, _low..high) when guess < number do
    guess(number, guess+1..high)
  end

  def _guess(number, guess, low.._high) when guess > number do
    guess(number, low..guess-1)
  end

end

ModulesAndFunctions6.guess(100, 1..1000)
