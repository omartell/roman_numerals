module RomanNumerals
  UNITS = {
    1000 => "M",
    100 => "C",
    50 => "L",
    10 => "X",
    5  => "V",
    1  => "I"
  }
  def self.translate(number)
    result = ""
    UNITS.keys.each do |unit, index|
      (number/unit).times do
        result += UNITS[unit]
        number -= unit
      end
      allowed_difference = 10**(number.to_s.size - 1)
      actual_difference  = (unit - number)
      if  actual_difference <= allowed_difference && unit != 1
        return result + translate(allowed_difference) + translate(number + allowed_difference)
      end
    end
    result
  end
end