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
      it "handles 3" do
        subject.translate(3).should eq "III"
      end
      it "handles 4" do
        subject.translate(4).should eq "IV"
      end
      it "handles 5" do
        subject.translate(5).should eq "V"
      end
      it "handles 6" do
        subject.translate(6).should eq "VI"
      end
      it "handles 7" do
        subject.translate(7).should eq "VII"
      end
      it "handles 8" do
        subject.translate(8).should eq "VIII"
      end
      it "handles 9" do
        subject.translate(9).should eq "IX"
      end
      it "handles 10" do
        subject.translate(10).should eq "X"
      end
    end
  end
end