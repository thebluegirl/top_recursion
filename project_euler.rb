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