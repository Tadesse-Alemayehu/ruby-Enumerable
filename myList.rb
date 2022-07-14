class MyList
  include Enumerable
  
  @list=[]
  def initialize(*input)
    @list=input
  end
  def list
    puts @list
  end
end

puts 'this is working'
my_list=MyList.new(1,2,3,4,);
puts my_list.list
