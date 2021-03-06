require_relative 'my_enumerable'

include Enumerable
class MyList
  def initialize(*inputs)
    @list=inputs
  end
  def each(&block)
    return false unless block_given?
    @list.each(&block)
  end
end
list = MyList.new(1, 2, 3, 4)

# Test #all?
result = list.all? { |e| e < 5 } # true
puts result
result = list.all? { |e| e > 5 } # false
puts result
result = list.all? # true
puts result

# Test #any?
result = list.any? { |e| e == 2 } # true
puts result
result = list.any? { |e| e == 5 } # false
puts result

# Test #filter
result = list.filter { |e| e&.even? } # 2, 4
puts result
