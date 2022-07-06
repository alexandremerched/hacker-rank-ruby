def iter_hash(hash)
  hash.each do |key, value|
    puts key, value
  end
end

user = {
  6 => nil,
  1 => "harry",
  2 => "potter",
  3 => "stephen",
  4 => "silvia",
  5 => "amelia",
  6 => "emilia",
}

iter_hash(user)
