module MyEnumerable
  def all?
    # All Elements satisfy condition
    each do |element|
      return false unless yield(element)
    end
    true
  end

  def any?
    # Any Element satisfy condition
    each do |element|
      return true if yield(element)
    end
    false
  end

  def filter
    # Returns Array of Elements that satisfy condition
    result = []
    each do |element|
      result << element if yield(element)
    end
    result.to_s
  end
end
