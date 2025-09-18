class AddCurrencyToSubscriptions < ActiveRecord::Migration[8.0]
  def change
    add_column :subscriptions, :currency, :string
  end
end
