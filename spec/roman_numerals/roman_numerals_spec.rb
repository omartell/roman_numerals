require 'spec_helper'
module RomanNumerals
  describe RomanNumerals do
    describe "translates from normal numbers to roman numbers" do
      [[1,"I"], [2, "II"], [3, "III"], [4, "IV"], [5, "V"], [6, "VI"], [7, "VII"],
      [8, "VIII"], [9, "IX"], [10, "X"], [11, "XI"], [12, "XII"], [13, "XIII"],
      [14, "XIV"], [15, "XV"], [16, "XVI"], [17, "XVII"], [18, "XVIII"]].each do |normal, roman|
        it "handles #{normal}" do
          subject.translate(normal).should eq roman
        end
      end
    end
  end
end