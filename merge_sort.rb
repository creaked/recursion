def merge_sort(ary)
  return ary if ary.size <= 1

  left = merge_sort(ary[0..(ary.size / 2) - 1])
  right = merge_sort(ary[(ary.size / 2)..-1])
  merge(left, right)
end

def merge(left, right)
  merge = []
  while !left.empty? && !right.empty?
    if left[0] <= right[0]
      merge << left.shift
    else
      merge << right.shift
    end
  end

  merge += left unless left.empty?
  merge += right unless right.empty?

  return merge
end

p merge_sort([10,5,2,6,19,21,12,3])
