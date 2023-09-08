require_relative 'enumerable'

class MyList
  include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def each()
    size = @list.length
    i = 0
    while i < size
      element = @list[i]
      yield(element)
      i += 1
    end
  end
end
