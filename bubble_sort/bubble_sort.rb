def bubble_sort(arr)
  loop do
    swapped = false
    first_index = 0
    n = arr.length - 1
    while first_index < n
      if arr[first_index] > arr[first_index + 1]
        # swap
        arr[first_index], arr[first_index + 1] = arr[first_index + 1], arr[first_index]
        swapped = true
      end
      first_index += 1
    end
    # largest number is sorted at the end
    n = n - 1
    if !swapped
      break
    end
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
