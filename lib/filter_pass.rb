
def filter_pass(frequencies, top = 1000, bottom = 40)
  output = []
  frequencies.each do |frequency|
    if frequency < bottom
      output << bottom
    elsif frequency > 1000
      output << 1000
    else
      output << frequency
    end
  end
  output
end
