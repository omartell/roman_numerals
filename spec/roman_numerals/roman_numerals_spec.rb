require 'spec_helper'
module RomanNumerals
  describe RomanNumerals do
    describe "translates from normal numbers to roman numbers" do
      it "handles 1" do
        subject.translate(1).should eq "I"
      end

      it "handles 2" do
        subject.translate(2).should eq "II"
      end
    end
  end
end