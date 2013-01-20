require 'spec_helper'
module RomanNumerals
  describe RomanNumerals do
    describe "translates from normal numbers to roman numbers" do
      [[1,"I"], [2, "II"], [3, "III"], [4, "IV"], [5, "V"], [6, "VI"], [7, "VII"],
      [8, "VIII"], [9, "IX"], [10, "X"], [11, "XI"], [12, "XII"], [13, "XIII"],
      [14, "XIV"], [15, "XV"], [16, "XVI"], [17, "XVII"], [18, "XVIII"],
      [19, "XIX"], [20, "XX"], [29, "XXIX"], [30, "XXX"], [41, "XLI"], [90, "XC"], 
      [941, "CMXLI"], [3497, "MMMCDXCVII"]].each do |normal, roman|
        it "handles #{normal}" do
          subject.translate(normal).should eq roman
        end
      end
    end
  end
end