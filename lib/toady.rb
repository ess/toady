require 'toady/version'

class Toady
  module Magic
    def method_missing(method_sym, *arguments, &block)
      [method_sym.to_sym] + arguments
    end

    def respond_to?(method_sym, include_private = false)
      true
    end
  end

  extend Magic
  include Magic
end
