require('rspec')
require('roman_numerals')

describe('numerals_counter') do
  it('Returns the Roman numeral version of a single digit') do
    numerals_counter(1).should(eq("I"))
  end

  it('Returns the 2-character Roman numeral version of a single digit') do
    numerals_counter(2).should(eq("II"))
  end
end
