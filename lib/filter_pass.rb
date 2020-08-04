
def filter_pass(array)
  output = []
  array.each do |freq|
    if freq < 40
      output << 40
    elsif freq > 1000
      output << 1000
    else
      output << freq
    end
  end
  output
end
