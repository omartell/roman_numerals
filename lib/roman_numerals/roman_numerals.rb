module RomanNumerals
  ROMAN_UNITS = {
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    5  => "V",
    1  => "I"
  }
  def self.translate(number)
    result = ""
    ROMAN_UNITS.keys.each do |roman_unit|
      (number/roman_unit).times do
        result += ROMAN_UNITS[roman_unit]
        number -= roman_unit
      end
      allowed_difference = 10**(number.to_s.size - 1)
      actual_difference  = (roman_unit - number)
      if  actual_difference <= allowed_difference && roman_unit != 1
        return result + translate(allowed_difference) + translate(number + allowed_difference)
      end
    end
    result
  end
end