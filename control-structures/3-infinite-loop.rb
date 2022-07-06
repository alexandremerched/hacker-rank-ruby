class Coder
  def initialize()
    @o_1 = false
    @counter = 0
    @limit = 10
  end

  def practice
    @counter += 1
    if @counter == @limit
      @o_1 = true
    end
    puts @o_1 ? "finally O(1)" : "still not O(1)"
  end

  def oh_one?
    @o_1
  end
end

coder = Coder.new()

loop do
  coder.practice
  break if coder.oh_one?
end