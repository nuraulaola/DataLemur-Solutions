def contains_duplicate(input)-> bool:
  list = set() 
  for element in input:
    if element in list:
      return True
    list.add(element)
  return False
