def sum_terms(n)
  (1..n).reduce(0) { |sum, n| (n * n + 1) + sum }
end

p sum_terms(25)