# The operator ​rem(a, b) returns the remainder after dividing ​a by ​b. Write a
# function that takes a single integer (​n) calls the function in the previous
# exercise, passing it ​rem(n,3), ​rem(n,5), and ​n. Call it 7 times with the
# arguments 10, 11, 12, etc. You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz”,
# 16”.

fizz_word = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, n -> n
end

fun1 = fn
  n -> fizz_word.(rem(n, 3), rem(n, 5), n)
end

IO.puts fun1.(10)
IO.puts fun1.(11)
IO.puts fun1.(12)
IO.puts fun1.(13)
IO.puts fun1.(14)
IO.puts fun1.(15)
