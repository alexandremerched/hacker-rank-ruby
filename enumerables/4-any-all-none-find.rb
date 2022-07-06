def func_any(hash)
  hash.any? { |key, value| key.class == Integer }
end

def func_all(hash)
  hash.all? { |key, value| value.class == Integer and value < 10 }
end

def func_none(hash)
  hash.none? { |key, value| value == nil }
end

def func_find(hash)
  hash.find { |key, value|
    (key.class == Integer && value.class == Integer && value < 20) ||
    (key.class == String && value.class == String && value[0] == "a")
  }
end

HASHS = {
  any: [
    { "a" => "a", "b" => "b", "c" => 1, 1 => 2 },
    { "a" => "a", "b" => "b", "c" => 1 },
  ],
  all: [
    { "a" => 1, "c" => 2, "d" => 3, "e" => 9 },
    { "a" => 10, "c" => 20, "d" => 30, "e" => 1 },
  ],
  none: [
    { "a" => 1, "b" => 2, "c" => 3, "d" => 1 },
    { "a" => 1, "b" => 2, "c" => 3, "d" => nil },
  ],
  find: [
    { "a" => "b", "b" => "c", 1 => 2 },
    { 2 => 40, 3 => 60, 1 => 20 },
    { "a" => 22, "b" => 21, "c" => "abc" },
    { "a" => "b", "b" => "c", "c" => "d", 1 => "a" },
  ],
}

HASHS.each { |key, value| 
  puts "\n#{key}"
  value.each { |hash|
    case key
    when :any
      p func_any(hash)
    when :all
      p func_all(hash)
    when :none 
      p func_none(hash)
    when :find
      p func_find(hash)
    end
  }
}