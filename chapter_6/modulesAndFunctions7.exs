# Convert a float to a string with 2 decimal digits. (Erlang)
:io.format("~.2f~n", [2.123])

# Get the value of an operating system environment variable. (Elixir)
IO.puts System.get_env("Path")

#  Return the extension component of a file name (so return ​.exs if given
# "dave/test.exs" (Elixir)
IO.puts Path.extname("./modulesAndFunctions7.exs")

# Return the current working directory of the process. (Elixir)
{_, path} = File.cwd()
IO.puts path

# Execute an command in your operating system’s shell
System.cmd("cmd", ["/c", "dir"])
