require './boot'
require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = 'irc.freenode.net'
    c.channels = ENV['CHANNELS'].split(',')
    c.nick = 'irc_spider'
  end

  on :channel do |message|
    Message.create :nick => message.user.nick, :message => message.message, :channel => message.channel.name
  end
end

bot.start
