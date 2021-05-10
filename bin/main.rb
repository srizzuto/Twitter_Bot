#!/usr/bin/env ruby

require './lib/teirobot.rb'

TBot = TeiroBot.new()

while TBot do
  TBot.answer
  TBot.do_retweet("#argentina #usa #europe #asia #australia #newzeland #germany #bulgaria #rumania #rusia #argentina #spain #ecuador #colombia", 3)
  TBot.do_post
  puts "That was some hard work... alright, I'll take 5' and do it again"
  sleep(300)
end

