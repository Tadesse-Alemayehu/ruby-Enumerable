module Enumerable
  def all?
    return false unless block_given?
    each {|n| return false unless yield(n)}
    true
  end
  def any?
    return false unless block_given?
    each {|n| return true if yield(n)}
    false
  end
  def filter
    result=[];
    return result unless block_given?
    each {|n| result.push(n) if yield(n)}
    result
  end
end
