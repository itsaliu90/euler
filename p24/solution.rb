def find_permutation_index(number_array, index)
  permutation_array = number_array.permutation.to_a
  return permutation_array[index-1]
end
