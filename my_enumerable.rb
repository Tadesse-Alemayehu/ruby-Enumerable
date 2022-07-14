module Enumerable
  # my_all? (continue as above)
  def all?(*par)
    b = true
    each do |a|
      if !par[0].nil?
        b = false unless par[0] == a
      elsif block_given?
        b = false unless yield a
      else
        b = false unless a
      end
    end
    b
  end

  # my_any?
  def any?(*par)
    b = false
    each do |a|
      if block_given?
        b = true if yield a
      elsif !par[0].nil?
        b = true if par[0] == a
      elsif a
        b = true
      end
    end
    b
  end

  def filter
    return to_enum(:filter) unless block_given?

    a = []
    each { |elm| a << elm if yield(elm) }
    a
  end
end
