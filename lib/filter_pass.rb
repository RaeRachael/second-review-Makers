
def filter_pass(array)
  if array[0] < 40
    return [40]
  end
  if array[0] > 1000
    return [1000]
  end
  array
end
