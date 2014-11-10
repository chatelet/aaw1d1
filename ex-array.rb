# Remove dups

class Array

  def my_uniq

    arr = []
    self.each do |item|
      if arr.include?(item)
        next
      else
        arr << item
      end

    end

    arr
  end

  def two_sum
    arr = []
    self.each_with_index do |item, i|
      (i+1...self.length).to_a.each do |j|
        if item + self[j] == 0
          arr << [i,j].sort
        end
      end
    end

    arr
  end


end


def my_transpose(arr)

  new_arr = Array.new(arr.length) { Array.new(arr.length, 0) }

  (0...arr.length).to_a.each do |i|
    (0...arr.length).to_a.each do |j|
      new_arr[j][i] = arr[i][j]
    end
    #p new_arr
  end

  new_arr
end

if $PROGRAM_NAME == __FILE__

  a = [1, 2, 1, 3, 3]
  p a.my_uniq

end
