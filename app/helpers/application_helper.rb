module ApplicationHelper
  def num_to_uzs(num)
    number_to_currency(num, unit: '')
  end

  def contract_status(status)
    case status
    when 'started'
      'Оплачивается'
    when 'paid'
      'оплачен'
    when 'rejected'
      'отказ'
    when 'pending'
      'В процессе'
    end
  end
end
