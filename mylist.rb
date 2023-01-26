require './my_enumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)
pp list

# Test #all?
# true
pp list.all? { |e| e < 5 }
# false
pp list.all? { |e| e > 5 }

# Test #any?
# true
pp list.any? { |e| e == 2 }
# false
pp list.any? { |e| e == 5 }

# Test #filter
# => [2, 4]
pp list.filter { |e| e.even? }
