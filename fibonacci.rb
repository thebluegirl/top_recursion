def fib(n)
  if n <= 0
      return Array.new
  elsif n == 1
      return [0]
  end
  
  array = [0, 1]
  until array.length == n
    array << array.last + array[array.length - 2]
  end
  return array
end
