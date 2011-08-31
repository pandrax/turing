require 'turing/machine/head'
require 'turing/machine/configuration_list'

module Turing
  class Machine
    attr_reader :head

    def initialize
      @head = Turing::Machine::Head.new
    end
  end
end
