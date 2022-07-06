def skip_animals(animals, skip)
  new_animals = []
  animals.each_with_index { | animal, index | 
      if index >= skip
          new_animals << "#{index}:#{animal}"
      end
  }
  return new_animals
end

p skip_animals(["bat", "cow", "jaguar", "panda", "tiger", "deer"], 3)
p skip_animals(["leopard", "bear", "fox", "wolf", "dog", "cat"], 0)