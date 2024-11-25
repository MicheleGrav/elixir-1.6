# Write a function ​gcd(x,y) that finds the greatest common divisor between two
# nonnegative integers. Algebraically, ​gcd(x,y)​ is ​x​ if ​y​ is zero, ​gcd(y,
# rem(x,y))​ otherwise.

defmodule ModulesAndFunctions5 do
  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end

IO.puts "(1,0) -> #{ModulesAndFunctions5.gcd(1,0)}"
IO.puts "(2,1) -> #{ModulesAndFunctions5.gcd(2,1)}"
IO.puts "(6,2) -> #{ModulesAndFunctions5.gcd(6,2)}"
