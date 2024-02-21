def fizz_buzz_sum(target):
    if target <= 0:
      return 0
      
    n = target - 1
    if n % 3 == 0 or n % 5 == 0:
        return n + fizz_buzz_sum(n)
    else:
        return fizz_buzz_sum(n)
