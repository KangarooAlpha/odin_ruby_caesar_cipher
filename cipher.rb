require 'pry-byebug'

def cipher(string,shift)
  arr = string.split("")
  shift = (shift % 26)
  lower = ("a"..."z").to_a
  upper = ("A"..."Z").to_a
  arr.map! do |letter| 
    if lower.include?(letter)
      if letter.ord + shift > 122
        shift = shift - 26
      end
      letter = mover(letter, shift)
    elsif upper.include?(letter)
      if letter.ord + shift > 90
        shift = shift - 26
      end
      letter = mover(letter, shift)
    else
      letter = letter 
      binding.pry
    end
  end.join
 # arr.map! {|letter| letter.chr}.join
end 

def mover(string, shift)
  string = (string.ord + shift).chr

end