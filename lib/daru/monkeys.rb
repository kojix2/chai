# frozen_string_literal: true

class Array
  def daru_vector(name = nil, index = nil, dtype = :array)
    Daru::Vector.new self, name: name, index: index, dtype: dtype
  end

  alias dv daru_vector

  def to_index
    Daru::Index.new self
  end
end

class Range
  def daru_vector(name = nil, index = nil, dtype = :array)
    Daru::Vector.new self, name: name, index: index, dtype: dtype
  end

  alias dv daru_vector

  def to_index
    Daru::Index.new to_a
  end
end

class Hash
  def daru_vector(index = nil, dtype = :array)
    Daru::Vector.new values[0], name: keys[0], index: index, dtype: dtype
  end

  alias dv daru_vector
end

class Matrix
  def elementwise_division(other)
    map.with_index do |e, index|
      e / other.to_a.flatten[index]
    end
  end
end

class Object
  if RUBY_VERSION < '2.2'
    def itself
      self
    end
  end
end
# :nocov:
