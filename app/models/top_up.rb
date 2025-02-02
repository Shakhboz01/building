class TopUp < ApplicationRecord
  belongs_to :contract
  belongs_to :user
  validates_presence_of :amount
  enum :top_up_type, [ :cash, :card, :bank, :mix ], suffix: true

  after_create :send_message

  private

  def send_message
    message =
      "<b>Оплата</b>\n" \
      "<b>Cумма: </b> #{amount}\n" \
      "<b>Регистратор: </b> #{user.name}\n"
    message << "<b>Комментарие:</b> #{comment}" unless comment.nil?
    SendMessageJob.perform_later(message)
  end
end
