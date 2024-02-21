def missing_int(input: list[int])-> int:
  n = len(input) + 1
  expected_sum = n * (n-1) // 2
  actual_sum = sum(input)
  missing_number = expected_sum - actual_sum
  return missing_number
