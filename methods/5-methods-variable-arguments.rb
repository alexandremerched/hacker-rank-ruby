def full_name(first, *rest)
  rest.reduce(first) { |o, x| o + " #{x}" }
end

p full_name("Alexandre", "Gomes", "Merched")