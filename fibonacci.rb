# Fibonacci
# Takes a number and returns that many members of the fibonacci sequence
def fibs(n, ary = [0,1])
  n.times { ary << ary[-2] + ary[-1] until ary.length == n }
  return ary
end

# Fibonacci with recursion
def fibs_rec(n, ary = [0,1])
  return ary if n == 0 || n == 1
  return ary if ary.length == n

  fibs_rec(n, (ary << ary[-2] + ary[-1]))
end
