#!/usr/bin/env ruby

require_relative '../lib/teirobot'

TBot = TeiroBot.new

while TBot
  puts "@TeiroBot ON! Just let me take at look at what you've requested me and I'll let you know when I'm done :)"
  TBot.answer # The method will take the last mention done within 5 minutes and will answer it
  TBot.do_retweet( # Here you can set what you are looking for retweet:
    # Strings will provide the search.
    # Integer will provide de number of retweets.
    '#argentina #usa #europe #asia #australia #newzeland #germany #bulgaria #rumania
    #rusia #argentina #spain #ecuador #colombia', 3
  )
  TBot.do_post # Takes a quote and post it
  puts "Ufffff... that was some hard work... alright, I'll take 5' and do it again. (ctrl+C to shut me down!)"
  sleep(300)
end
