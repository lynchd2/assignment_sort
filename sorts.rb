
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
  p array
end


#bubble_sort([4,3,6,7,1,8,2,5])


def merge_sort(array)
  return array if array.length == 1
  if array.length % 2 != 0
    left_arr = array[0..(array.length / 2)]
    right_arr = array[(array.length / 2.0).round..array.length - 1]
  else
    left_arr = array[0..(array.length / 2 - 1)]
    right_arr = array[(array.length / 2.0).round..array.length - 1]
  end
  p left_arr
  p right_arr
end

def merge(left_arr, right_arr)
  new_arra = []

end

merge_sort([1,2,3,4,5,6,7])


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
