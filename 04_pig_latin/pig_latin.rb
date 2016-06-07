def translate(x)
  array = x.split(" ").map { |x| x.split("") }
  string = ''

  vowels = ['a','e','i','o']
  array.each do |x|
    for i in 0...x.length
      if i==0 && vowels.include?(x[i])
        string += "#{x.join}ay "
        break
      elsif i >= 1 && (vowels.include?(x[i]))
        string += "#{(x.slice(i..x.length)).join}#{(x.slice(0...i)).join}ay "
        break
      end
    end
  end
  return string[0...string.length-1]
end
