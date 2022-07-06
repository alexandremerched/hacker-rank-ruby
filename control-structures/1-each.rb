class User 
  def update_score
    puts "Scored Updated"
  end
end

def scoring(array)
  array.each do |user|
      user.update_score 
  end
end

users = []
(0..10).each {
  users << User.new()
}

scoring(users)