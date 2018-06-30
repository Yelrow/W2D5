class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    return 13 if self.empty?
    result = 0
    self.each_with_index do |el, idx|
      result += (el.ord) ^ (el.ord**idx)
    end
    result
  end
end

class String
  def hash
    return 42 if self.empty?
    result = 0
    self.chars.each_with_index do |char, idx|
      result += (char.ord) ^ (char.ord**idx)
    end
    result
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    result = []
    self.each do |k, v|
      result << v.hash
    end
    result.sum
  end
end
