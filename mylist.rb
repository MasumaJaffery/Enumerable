require_relative 'enumerable'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def each()
    size = @list.length
    (0...size).each do |i|
      element = @list[i]
      yield(element)
    end
  end
end
