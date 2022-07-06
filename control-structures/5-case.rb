class Hacker end
class Submission end
class TestCase end
class Contest end

def identify_class(obj)
  case obj
  when Hacker
    puts "It's a Hacker!"
  when Submission
    puts "It's a Submission!"
  when TestCase
    puts "It's a TestCase!"
  when Contest
    puts "It's a Contest!"
  else
    puts "It's an unknown model"
  end
end

values = [
  10,
  Hacker.new,
  Submission.new,
  TestCase.new,
  Submission.new,
  Hacker.new,
  Hacker.new,
  Submission.new,
  TestCase.new,
  Contest.new,
  Hacker.new,
]

values.each do |value|
  identify_class(value)
end
