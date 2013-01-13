module RomanNumerals
  def self.translate(normal)
    if normal == 1
      "I"
    elsif normal == 2
      "II"
    elsif normal == 3
      "III"
    elsif normal == 4
      "IV"
    elsif normal == 5
      "V"
    elsif normal == 6
      "VI"
    elsif normal == 7
      "VII"
    elsif normal == 8
      "VIII"
    elsif normal == 9
      "IX"
    else
      "X"
    end
  end
end