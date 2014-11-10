# EXERCISE 1
def multiply_by_two(arr)

  arr.map{|elem| elem *2 }
end

# EXERCISE 2
class Array

  def my_each

    (self.length).times {|i| yield(self[i])}

    self
  end

end

# EXERCISE 3
def median(arr)
  a = arr.sort
  arr.length.even? ? (a[arr.length/2] + a[(arr.length / 2) - 1]) / 2.0 : a[arr.length / 2]
end

# EXERCISE 4
def concatenate(arr)
  arr.inject(""){|str, word| str += word; str}

end

p concatenate(["Yay", "for", "", "strings!"])
