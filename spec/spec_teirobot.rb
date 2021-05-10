require './lib/teirobot'
require './lib/news_retweet'
require './lib/quotes'
require './lib/mentions_ans'

describe TeiroBot do
  describe '#initialize' do
    it 'requires an object instance of Answers' do
      expect(TeiroBot.new.mentions).to be_a(Object)
    end
    it 'requires an object of Quote' do
      expect(TeiroBot.new.quoter).to be_a(Object)
    end
    it 'requires an object of News' do
      expect(TeiroBot.new.retweet).to be_a(Object)
    end
    it 'requires an object of Client' do
      expect(TeiroBot.new.client).to be_a(Object)
    end
  end
end
