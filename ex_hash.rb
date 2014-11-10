class MyHashSet
  def initialize
    @store = {}
  end

  def insert(el)
    @store[el] = true
  end

  def include?(el)
    @store.keys.include?(el)
  end

  def delete(el)
    return false if !self.to_a.include?(el)

    @store.delete(el)
    true
  end

  def to_a
    @store.keys
  end

  def union(set2)
    s = MyHashSet.new

    arr = (self.to_a + set2.to_a).uniq.each do |elem|
      s.insert(elem)
    end
    s.to_a

  end

  def intersect(set2)
    s = MyHashSet.new
    self.to_a.each do |elem|
      s.insert(elem) if set2.include?(elem)
    end

    s.to_a
  end

  def minus(set2)
    s = MyHashSet.new
    self.to_a.each do |elem|
      s.insert(elem) unless set2.include?(elem)
    end
    s.to_a
  end

end

=begin
a = MyHashSet.new
a.insert(2)
b = MyHashSet.new
b.insert(2)
b.insert(5)
p a.intersect(b)
p a
p b.minus(a)
p b
p a.minus(b)
=end
