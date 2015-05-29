require('rspec')
require('word_puzzle')

describe('string#word_puzzle') do
  it('takes a word and replaces all vowels with a dash') do
    expect(('geography').word_puzzle()).to(eq('g--gr-phy'))
  end
  it('takes a multi-word string and replaces all vowels with a dash') do
    expect(('believe you').word_puzzle()).to(eq('b-l--v- y--'))
  end
end
