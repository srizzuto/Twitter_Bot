require_relative '../lib/news_retweet'
require_relative '../lib/teirobot'

describe News do
  let(:client) { TeiroBot.new.client }
  let(:hashtag) { '#finland #norway #sweden' }
  let(:n_retweets) { 3 }

  describe '#news_retweet' do
    it 'requires an Object argument for client' do
      expect(client).to be_a(Object)
    end
    it 'requires an String argument for hashtag' do
      expect(hashtag).to be_a(String)
    end
    it 'requires an Integer argumet for n_retweets' do
      expect(n_retweets).to be_a(Integer)
    end
    it 'requires 3 arguments' do
      expect { News.new.news_retweet }.to raise_error(ArgumentError)
    end
  end
end
