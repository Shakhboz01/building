module ApplicationHelper
  def num_to_uzs(num)
    number_to_currency(num, unit: '')
  end
end
