require "test_helper"

class SubscriptionTest < ActiveSupport::TestCase
  test "returns 0 when there are no subscriptions" do
    Subscription.delete_all
    assert_equal 0, Subscription.average_cost_in_thb
  end

  test "converts USD to THB before averaging" do
    assert_equal 126.875, Subscription.average_cost_in_thb
  end
end
