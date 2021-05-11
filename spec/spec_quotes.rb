require_relative '../lib/quotes'

describe Quote do

  before(:all) do
    @quo = Quote.new
  end

  describe '#take_quote' do
    it 'returns the quote in line 1' do
      expect(@quo.take_quote).to eq('"The greatest glory in living lies not in never falling,'\
      " but in rising every time we fall.\" -Nelson Mandela\n")
    end
    it 'returns the quote in line 2' do
      expect(@quo.take_quote).to eq('"The way to get started is to quit talking and begin'\
      " doing.\" -Walt Disney\n")
    end
    it 'returns the quote in line 3' do
      expect(@quo.take_quote).to eq("\"Your time is limited, so don't waste it living someone"\
      " else's life. Don't be trapped by dogma – which is living with the results of other"\
      " people's thinking.\" -Steve Jobs\n")
    end
    it 'returns the quote in line 4' do
      expect(@quo.take_quote).to eq('"If life were predictable it would cease to be life,'\
      " and be without flavor.\" -Eleanor Roosevelt\n")
    end
    it 'returns the quote in line 5' do
      expect(@quo.take_quote).to eq("\"If you look at what you have in life, you'll"\
      " always have more. If you look at what you don't have in life, you'll never have enough.\""\
      " -Oprah Winfrey\n")
    end
  end
end
