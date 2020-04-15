require 'discordrb'
require_relative 'lib/kokusei_chosa.rb'

bot = Discordrb::Commands::CommandBot.new(
    token: ENV['TOKEN'],
    prefix:'!',
)

bot.ready do |event|
  channel = bot.channel(id=695618239757025290)
  channel.send_message("R   u   b   y   か   ら   こ   ん   に   ち   は")
end

bot.command :hello do |event|
  event.send_message("R   u   b   y   か   ら   こ   ん   に   ち   は")
end

bot.message do |event|
  if event.content.include?("Python")
    event.respond("Pythonはクソ！")
    event.respond("Pythonなんてやめちまえ！w")
  end
end

bot.run()