module RomanNumerals
  UNITS = {
    "1"   =>  "I",
    "5"   => "V",
    "10"  => "X"
  }
  def self.translate(number)
    result = ""
    ((number+1) / 10).times do ||
      if ((10 - number) == 1) || ((number % 10) >= 0 && number >= 10)
        if (10 - number) == 1
          result += UNITS["1"] + UNITS["10"]
          number = 0
        else
          result += UNITS["10"]
          number = number - 10
        end
      end
    end

    if ((5 - number) == 1) || ((number % 5) >= 0 && number >= 5)
      if (5 - number) == 1
        result += UNITS["1"] + UNITS["5"]
        number = 0
      else
        result += UNITS["5"]
        number = number - 5
      end
    end
    if (number % 5) <= 3
      result += UNITS["1"] * (number % 5)
    end
    result
  end
end