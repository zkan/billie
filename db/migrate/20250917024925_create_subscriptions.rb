class CreateSubscriptions < ActiveRecord::Migration[8.0]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.float :cost
      t.integer :billing_period

      t.timestamps
    end
  end
end
