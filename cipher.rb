def cipher(string,shift)
  arr = string.split("")
  arr.map! do |char| 
    char = char.ord + shift 
  end
  arr.map! {|char| char.chr}
end 