
def insertion_sort(array)
  i = 1
  while i < array.length
    insert(array, i-1, array[i])
    i += 1
  end
  array
end

def insert(array, right_index, value)
  # value is the value of array[right_index + 1]
  # right_index is the furthest right sorted element

  # Step through sorted elements right to left.
  # As long as your value is less than the element
  # at array[i] and you still have elements
  i = right_index
  while(i >= 0 && array[i] > value)
    # copy the element
    array[i+1] = array[i]
    i -= 1
  end

  # insert the actual element
  array[i+1] = value;
end


def bubble_sort(array)
  swapped = true
  while swapped
    i = 0
    swapped = false
    while i < array.length - 1
      if array[i] > array[i + 1]
        array[i+1], array[i] = array[i], array[i+1]
        swapped = true
      end
      i += 1
    end
  end
  array
end


#bubble_sort([4,3,6,7,1,8,2,5])


def merge_sort(array)
  return array if array.length == 1
  mid = array.length/2
  left_arr = array[0..(mid-1)]
  right_arr = array[mid..-1]
  merge(merge_sort(left_arr), merge_sort(right_arr))
end
# if array.length % 2 != 0
#   left_arr = array[0..(array.length / 2)]
#   right_arr = array[(array.length / 2.0).round..array.length - 1]
# else
#   left_arr = array[0..(array.length / 2 - 1)]
#   right_arr = array[(array.length / 2.0).round..array.length - 1]
# end


def merge(first, second)
  return_array = []
  first_count = 0
  second_count = 0
  while return_array.length < (first.length + second.length)
    if first[first_count].nil?
      return_array << second[second_count]
      second_count += 1
    elsif second[second_count].nil?
      return_array << first[first_count]
      first_count += 1
    elsif first[first_count] > second[second_count]
      return_array << second[second_count]
      second_count += 1
    else # second_count == second.length || second[second_count] < first[first_count]
      return_array << first[first_count]
      first_count += 1
    end
  end
  return_array
end

def benchmark(method, array)
  start = Time.now
  send(method.to_sym, array)
  (Time.now - start) * 1000
end

def benchmarks(array)
  # array = [7, 6, 5, 4, 3, 2, 1]
  puts "merge_sort: #{benchmark('merge_sort', array)}"
  puts "insertion_sort: #{benchmark('insertion_sort', array)}"
  puts "bubble_sort: #{benchmark('bubble_sort', array)}"
end


p merge_sort([7, 6, 5, 4, 3, 2, 1])

array = Array.new(10000) { rand(9) }

benchmarks(array)
=begin
function mergeSort(array) {
    // if the array is one element long, just return it

    // mergeSort() the left half of the array

    // mergeSort() the right half of the array

    // merge() the two halves

    // return the merged array
}



function merge(leftArr, rightArr){

    // var newArr = [];

    // compare leftArr[0] and rightArr[0]
    // whichever is smaller, push it onto newArr

    // repeat the process, but don't reuse elements,
    // until you have pushed all the elements from
    // leftArr and rightArr onto newArr in sorted order

    // return newArr
}
=end
