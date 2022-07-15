module Enumerable
  def all?
    return false unless block_given?
    each {|n| return false unless yield(n)}
    puts 'this is all'
    true
  end
  def any(&block)
    puts 'this is any'
  end
  def filter(&block)
    puts 'this is filter'
  end
end
