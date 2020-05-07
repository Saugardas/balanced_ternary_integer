require 'balanced_ternary_integer/version'
require 'balanced_ternary_integer/balanced_ternary_integer' # .co file

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
  end
end
