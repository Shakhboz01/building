class GenerateTopUpsReceipts < ActiveInteraction::Base
  include ActionView::Helpers
  include ApplicationHelper

  array :top_ups
  object :contract

  def execute
    items = [
      ["<b>Квитанция №</b>", "<b>Сумма оплаты</b>", "<b>Тип оплаты</b>", "<b>Комментарие</b>", "<b>Дата</b>", "<b>Регистратор</b>"]
    ]
    top_ups.each do |top_up|
      items.push(
        [
          top_up.id.to_s,
          num_to_uzs(top_up.amount.to_i),
          t("enums.top_ups.#{top_up.top_up_type}"),
          top_up.comment,
          format_datetime(top_up.created_at),
          top_up.user.name,
        ]
      )
    end

    if top_ups.count > 1
      items.push(
        [
          nil,
          "<b>#{num_to_uzs(contract.top_ups.sum(:amount))}</b>",
          nil,
          nil,
          nil,
          nil,
        ]
        )
    end

    Receipts::Receipt.new(
      font: {
        bold: File.expand_path("./app/assets/fonts/CharisSILB.ttf"),
        italic: File.expand_path("./app/assets/fonts/CharisSILB.ttf"),
        normal: File.expand_path("./app/assets/fonts/Alice-Regular.ttf")
      },
      title: "Квитанция",
      details: [
        ['Дата печати:', format_datetime(DateTime.current)],
        ['Номер блока:', contract.apartment.block.name],
        ['Номер этажа:', contract.apartment.floor.number],
        ['Номер квартиры:', contract.apartment.apartment_number.number],
      ],
      company: {
        name: "ZARAFSHON AVENUE",
        address: "Ибн Сино 4А",
        email: "+99897 923 00 03 / +99897 923 00 03"
        # logo: File.expand_path("./examples/images/logo.png")
      },
      recipient: [
        "Клиент:",
        contract.fullname,
        "#{contract.passport_number} #{contract.phone_number}",
        nil,
        nil
      ],
      line_items: items,
      footer: "Пожалуйста, свяжитесь с нами, если у вас есть какие-либо вопросы."
    )
  end
end
