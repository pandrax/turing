require 'helper'

describe Turing::Machine::Tape do
  it "should be an array" do
    Turing::Machine::Tape.new.must_be_kind_of Array
  end

  describe "#inspect" do
    it "should include its class name" do
      Turing::Machine::Tape.new.inspect.must_include "<Turing::Machine::Tape>"
    end
  end

  describe "#to_s" do
    it "should join the characters" do
      tape = Turing::Machine::Tape.new([1,2,3])
      tape.to_s.must_equal tape.join
      tape.to_s.must_equal "123"
    end

    it "should replace nils with underbars" do
      tape = Turing::Machine::Tape.new([1,nil,3])
      tape.to_s.must_equal "1_3"
    end
  end
end