class FixBillingPeriodEnumConstraint < ActiveRecord::Migration[8.1]
  def change
    # Remove old constraint
    remove_check_constraint :subscriptions, name: "check_billing_period_enum"

    # Update existing data: 1 -> 0 (monthly), 2 -> 1 (yearly)
    execute "UPDATE subscriptions SET billing_period = 0 WHERE billing_period = 1"
    execute "UPDATE subscriptions SET billing_period = 1 WHERE billing_period = 2"

    # Add new constraint for 0 and 1 (array enum values)
    add_check_constraint :subscriptions, "billing_period IN (0, 1)", name: "check_billing_period_enum"
  end
end
