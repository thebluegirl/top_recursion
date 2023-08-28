def multiples_of_3_or_5(n, array=[])
  n -= 1
  return array.sum if n <= 0
  if n % 3 == 0
    array << n
  elsif n % 5 == 0
    array << n
  end
  multiples_of_3_or_5(n, array)
end

def even_fibonacci_nums(array=[0,1])
  if array.any? { |element| element >= 4_000_000 }
    return array.keep_if {|element| element % 2 == 0}.sum
  end
  array << array.last + array[array.size - 2]
  even_fibonacci_nums(array)
end
