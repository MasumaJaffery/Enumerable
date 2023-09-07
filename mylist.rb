require_relative 'enumerable'

class MyList
    include MyEnumerable
    def intialize (*args)
    @list = args
    end
    def each
    @list.each do|element| yield(element)
    end
end
end