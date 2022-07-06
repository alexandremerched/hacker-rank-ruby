class User 
  attr_accessor :admin, :init_score, :score

  def initialize(admin, init_score)
    @admin = admin
    @score = init_score
    @init_score = init_score
  end

  def update_score
    @score += 1
  end

  def is_admin?
    @admin
  end
end

def scoring(array)
  array.each do |user|
      unless user.is_admin?
          user.update_score
      end
  end
end

users = [
  User.new(true, 8),
  User.new(false, 1),
  User.new(false, 0),
  User.new(false, 1),
  User.new(true, 3),
  User.new(true, 7),
  User.new(false, 6),
  User.new(false, 3),
  User.new(false, 7),
  User.new(true, 3),
]

scoring(users)

users.each do |user| p user end