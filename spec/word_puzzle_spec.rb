require('rspec')
require('word_puzzle')

describe('string#word_puzzle') do
  it('takes a string and replaces all vowels with a dash') do
    expect(('geography').word_puzzle()).to(eq('g--gr-phy'))
  end
end
