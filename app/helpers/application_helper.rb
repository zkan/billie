module ApplicationHelper
  def currency_symbol(currency)
    case currency
    when "THB" then "THB "
    else "$"
    end
  end
end
