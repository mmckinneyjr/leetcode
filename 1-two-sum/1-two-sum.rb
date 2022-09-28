def two_sum(nums, target)
  nums.map.with_index { |x, i|
    y = target - x
    return [i, nums.find_index(y)].sort if nums.include?(y) && nums.find_index(y) != i
  }
end