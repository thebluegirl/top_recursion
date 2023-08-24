def fib(n)
  array = [0, 1]
  return n if n < 2
  until array.length == n
    array << array.last + array[array.length - 2]
  end
  return array
end

def fibs_rec(n, array=[0, 1])
  return array if array.size >= n 
  array << array.last + array[array.size - 2]
  fibs_rec(n, array)
end