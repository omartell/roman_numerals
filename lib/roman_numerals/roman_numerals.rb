module RomanNumerals
  ROMAN_UNITS = {
    1000 => "M",
    500  => "D",
    100  => "C",
    50   => "L",
    10   => "X",
    5    => "V",
    1    => "I"
  }

  class Roman
    attr_reader :value

    def initialize(value)
      @value = value
    end

    def to_s
      roman = ''
      remaining_arabic = value

      ROMAN_UNITS.each { |roman_value, roman_unit|
        roman += roman_unit * (remaining_arabic/roman_value)
        remaining_arabic -= roman_value * (remaining_arabic/roman_value)

        if remaining_arabic == 0
          break
        elsif substracted = roman_in_substracted_notation(remaining_arabic, roman_value)
          roman += substracted
          break
        end
      }

      roman
    end

    private

    def roman_in_substracted_notation(arabic, roman_value)
      allowed_difference = 10**(arabic.to_s.size - 1)
      actual_difference  = roman_value - arabic

      if actual_difference <= allowed_difference
        self.class.new(allowed_difference).to_s +
          self.class.new(arabic + allowed_difference).to_s
      end
    end
  end
end
