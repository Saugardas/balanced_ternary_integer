require 'balanced_ternary_integer/version'

module BalancedTernaryInteger
  class << self
    def from_int(number)
      raise ArgumentError, "Integer expected, got #{number.class}" unless number.instance_of?(Integer)

      digits = ''
      begin
        quotient, modulus = number.divmod(3)
        digits.prepend(modulus == 2 ? 'T' : modulus.to_s)
        number = modulus == 2 ? quotient + 1 : quotient
      end until number.zero?
      digits
    end

    def to_int(string)
      raise ArgumentError, "String expected, got #{string.class}" unless string.instance_of?(String)
      raise ArgumentError, 'String must contain only 0, 1, T symbols' unless string.match?(/\A[01T]*\z/)

      string.chars.reverse.map.with_index.sum do |char, index|
        num = char == 'T' ? -1 : char.to_i
        num * 3**index
      end
    end
  end
end
