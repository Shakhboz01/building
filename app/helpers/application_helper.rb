module ApplicationHelper
  def num_to_uzs(num)
    number_to_currency(num, unit: '')
  end

  def apartment_title(apartment)
    return "#{apartment.apartment_number.square} кв.м" unless apartment.is_full?

    apartment.contract.contract_number
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
      'В процессе (брон)'
    end
  end

  def format_datetime(datetime)
    return if datetime.nil?

    datetime.strftime("%Y-%m-%d %H:%M:%S")
  end

  def define_contract_status(payment_day, last_top_up_date)
    return 'table-success' if last_top_up_date&.day == payment_day

    ''
  end
end
