class Subscription < ApplicationRecord
  USD_TO_THB = 36.5

  def cost_in_thb
    case currency
    when "THB"
      cost
    else
      cost * USD_TO_THB
    end
  end

  def self.average_cost_in_thb
    return 0 if count.zero?

    all.map(&:cost_in_thb).sum / count
  end
end
