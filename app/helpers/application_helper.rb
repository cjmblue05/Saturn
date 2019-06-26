module ApplicationHelper
  def format_currency(amount, unit=nil)
    number_to_currency(amount, unit: unit.present? ? unit: '')
  end
end
