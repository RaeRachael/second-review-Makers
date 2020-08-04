
def filter_pass(frequencies, top = 1000, bottom = 40)
  raise "filters need to be numbers" unless top.is_a?(Numeric)
  output = []
  frequencies.each do |frequency|
    unless frequency.is_a?(Numeric)
      raise 'data corrupted'
    end
    if frequency < bottom
      output << bottom
    elsif frequency > top
      output << top
    else
      output << frequency
    end
  end
  output
end
