def num_to_s(num, base)

  hash = {0 => '0', 1 => '1', 2=> '2', 3 => '3', 4 => '4', 5 => '5', 6=> '6', 7=>'7', 8=>'8', 9=>'9', 10=>'A', 11 => 'B', 12 => 'C', 13 => 'D', 14 => 'E', 15 => 'F'}

    result = ""
    pow = 0

    until (num / (base ** pow) == 0)

      result += hash[num / (base ** pow) % base]

      pow += 1
    end

    result.reverse

end

def caesar_cipher(str, num)
  # 97 - 122
  hash = ("a".."z").to_a.reduce({}) {|hash, char| hash[char] = char.ord - 97; hash}
  str.chars.map do |char|
    hash[char] + num > 25 ? ((hash[char] + num) % 26 + 97).chr : ((hash[char] + num)+97).chr
  end.join
  
end
