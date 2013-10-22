class Queue
  def initialize
    @start = 0
    @end = 0
    @storage = []
  end

  def length
    @end - @start
  end

  def add item
    @storage[self.length] = item
    @end += 1
  end

  def remove
    unless self.length <= 0
      @start += 1
      ret = @storage[@start - 1]
    end
  end

end