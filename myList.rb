require './myEnumerable.rb'
class MyList
  include Enumerable
  @list
  def initialize(*input)
    @list=input
  end
  def each
    puts @list.to_a
  end
end

puts 'this is working'
my_list=MyList.new(1,2,3,4,);
my_list2=MyList.new(1,2,3,4,5);
puts my_list.each
my_list.printer('this is my name')
