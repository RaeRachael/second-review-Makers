
def filter_pass(frequencies)
  output = []
  frequencies.each do |frequency|
    if frequency < 40
      output << 40
    elsif frequency > 1000
      output << 1000
    else
      output << frequency
    end
  end
  output
end
