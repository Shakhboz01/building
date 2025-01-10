require "telegram/bot"

# app/jobs/send_message_job.rb
class SendMessageJob < ApplicationJob
  queue_as :default

  def perform(message, chat = 'tech')
    token = "7056694119:AAEvfWv2zXcx6PU-xpsLPgI6g_1goTd9eXM"
    bot = Telegram::Bot::Client.new(token)
    chat_id = "-4746825958"

    begin
      bot.api.send_message(
        chat_id: chat_id,
        text: message,
        parse_mode: "HTML",
        disable_web_page_preview: 1
      )
    rescue => exception
      puts "error"
    end
  end
end
