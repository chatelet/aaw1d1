def hanoi(number)

  a = (1..number).to_a # ex: [1,2,3]
  b = []
  c = []

  until b.count == number || c.count == number
    puts "current piles"
    puts "a = #{a}, b = #{b}, c = #{c}"
    puts "Select a pile a, b, or c to choose from: "
    pile_from = gets.chomp
    puts "Select a pile a, b, or c to put it in: "
    pile_to = gets.chomp

    hash = {'a' => a, 'b' => b, 'c' => c }
    pile_from = hash[pile_from]
    pile_to = hash[pile_to]

    if pile_from == nil || pile_to == nil
      puts "Sorry wrong letter, choose from a, b or c"
      next
    end

    if pile_from.empty?
      puts 'Sorry that pile is empty, please pick another one.'
    else
      if pile_to.empty? || pile_from.first < pile_to.first
        pile_to.unshift(pile_from.shift)
      else
        puts "Illegal move, please pick another pile to move disk to."
      end
    end

  end

  puts "finished. current piles"
  puts "a = #{a}, b = #{b}, c = #{c}"

end
