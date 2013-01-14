module RomanNumerals
  UNITS = {
    "1"   =>  "I",
    "5"   => "V",
    "10"  => "X"
  }
  def self.translate(number)
    result = ""
    [10, 5].each do |unit|
      ((number + 1)/unit).times do
        if (unit - number) == 1
          result += UNITS["1"] + UNITS[unit.to_s]
          number = number - unit + 1
        else
          result += UNITS[unit.to_s]
          number = number - unit
        end
      end
    end
    result += UNITS["1"] * (number % 5)
    result
  end
end