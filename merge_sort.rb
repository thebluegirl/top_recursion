def merge_sort(array)
  return array if array.size <= 1
  middle = array.size / 2
  left = array[0..(middle - 1)]
  right = array[middle..-1]
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted_array = Array.new
  until left.empty? || right.empty?
    if left.first < right.first
      sorted_array << left.shift
    else
      sorted_array << right.shift
    end
  end
  sorted_array.concat(left).concat(right)
end