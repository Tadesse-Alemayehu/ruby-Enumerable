require './myEnumerable'

class MyList
  include Enumerable

  def initialize(*list)
    @list = list
  end

  def each
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
puts list.all? { |e| e < 5 } # true
puts list.all? { |e| e > 5 } # false
puts list.all? # true

# Test #any?
puts list.any? { |e| e === 2 } # true
puts list.any? { |e| e === 5 } # false

# Test #filter
p list.filter { |e| e&.even? } # 2, 4
