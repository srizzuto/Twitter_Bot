require './lib/teirobot'
require './lib/mentions_ans'

describe Answers do
  let(:ans) { Answers.new }

  describe '#get_reply' do
    it 'returns adecuate answer for each mention' do
      expect(ans.get_reply('How are you')).to eq("All good. What about you?\n")
    end
    it 'returns adecuate answer for each mention' do
      expect(ans.get_reply('Do you know about this?')).to eq("Don't ask me. I'm just a bot.\n")
    end
    it 'returns adecuate answer for each mention' do
      expect(ans.get_reply('haha')).to eq("That's not funny at all. >:(\n")
    end
    it 'returns adecuate answer for each mention' do
      expect(ans.get_reply('Hello')).to eq("Hey! :)\n")
    end
    it 'returns adecuate answer for each mention' do
      expect(ans.get_reply('bye')).to eq("Have a nice day!\n")
    end
    it 'returns adecuate answer for each mention' do
      expect(ans.get_reply('thank you')).to eq("You're welcome.\n")
    end
    it 'returns adecuate answer for each mention' do
      expect(ans.get_reply('ASDfararaf')).to eq("Sorry, I don't get it. Could you try again?\n")
    end
  end

  describe '#get_line' do
    it 'returns a line from the .txt file' do
      expect(ans.get_line(1)).to eq("All good. What about you?\n")
    end
    it 'returns a line from the .txt file' do
      expect(ans.get_line(2)).to eq("Don't ask me. I'm just a bot.\n")
    end
    it 'returns a line from the .txt file' do
      expect(ans.get_line(3)).to eq("That's not funny at all. >:(\n")
    end
    it 'returns a line from the .txt file' do
      expect(ans.get_line(4)).to eq("Hey! :)\n")
    end
    it 'returns a line from the .txt file' do
      expect(ans.get_line(5)).to eq("Have a nice day!\n")
    end
    it 'returns a line from the .txt file' do
      expect(ans.get_line(6)).to eq("You're welcome.\n")
    end
    it 'returns a line from the .txt file' do
      expect(ans.get_line(7)).to eq("Sorry, I don't get it. Could you try again?\n")
    end
  end
end
