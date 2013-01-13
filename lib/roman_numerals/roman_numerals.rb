module RomanNumerals
  UNITS = {
    "1"   =>  "I",
    "5"   => "V",
    "10"  => "X"
  }
  def self.translate(normal)
    mod5_result   = normal % 5
    mod10_result  = normal % 10

    if mod10_result == 0
      UNITS["10"]
    elsif mod5_result == 0
      UNITS["5"]
    elsif mod5_result <= 3 && normal/5 == 0
      UNITS["1"] * mod5_result
    elsif mod5_result == 4 && normal/5 == 0
      UNITS["1"] + UNITS["5"]
    elsif mod5_result <= 3 && normal/5 == 1
      UNITS["5"] + UNITS["1"] * mod5_result
    elsif mod5_result == 4 && normal/5 == 1
      UNITS["1"] + UNITS["10"]
    end
  end
end