require './myEnumerable.rb'

class MyList
  include Enumerable

  def initialize(*list)
    @list = list
  end

  def my_each
    return to_enum unless block_given?

    m = @list.to_a
    m.length.times do |a|
      yield m[a]
    end
    self
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts list.my_all? { |e| e < 5 } # true
puts list.my_all? { |e| e > 5 } # false
puts list.my_all? #true

# Test #any?
puts list.my_any? { |e| e == 2 } # true
puts list.my_any? { |e| e == 5 } # false

# Test #filter
p list.my_filter { |e| e&.even? } # 2, 4
