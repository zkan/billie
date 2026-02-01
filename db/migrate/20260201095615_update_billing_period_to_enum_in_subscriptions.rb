class UpdateBillingPeriodToEnumInSubscriptions < ActiveRecord::Migration[8.1]
  def change
    # Add check constraint to ensure valid enum values
    change_column :subscriptions, :billing_period, :integer, null: false
    add_check_constraint :subscriptions, "billing_period IN (1, 2)", name: "check_billing_period_enum"
  end
end
