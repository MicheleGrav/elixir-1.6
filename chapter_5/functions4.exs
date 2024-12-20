# Write a function ​prefix that takes a string. It should return a new function that
# takes a second string. When that second function is called, it will return a string
# containing the first string, a space, and the second string.

prefix = fn
  str1 ->
    fn str2 ->
        "#{str1} #{str2}"
    end
end

mrs = prefix.("Mrs")

IO.puts mrs.("Smith")

IO.puts prefix.("Elixir").("Rocks")
