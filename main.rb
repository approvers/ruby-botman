require 'discordrb'

bot = Discordrb::Commands::CommandBot.new(
    token: ENV['TOKEN'],
    prefix:'!',
)

bot.command :hello do |event|
  event.send_message("R   u   b   y   か   ら   こ   ん   に   ち   は")
end

bot.run