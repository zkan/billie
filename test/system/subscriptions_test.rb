require "application_system_test_case"

class SubscriptionsTest < ApplicationSystemTestCase
  setup do
    @subscription = subscriptions(:one)
  end

  test "visiting the index" do
    visit subscriptions_url
    assert_selector "h1", text: "Subscriptions"

    assert_text "Avg. Recurring Expenses"
    assert_text "THB 126.88"
    assert_text "Monthly"

    assert_text "MyString in USD"
    assert_text "$1.50"
    assert_text "2"

    assert_text "MyString in THB"
    assert_text "THB 199.00"
    assert_text "2"
  end

  test "should create subscription" do
    visit subscriptions_url
    click_on "New subscription"

    fill_in "Name", with: @subscription.name
    fill_in "Cost", with: @subscription.cost
    fill_in "Currency", with: @subscription.currency
    fill_in "Billing period", with: @subscription.billing_period
    click_on "Create Subscription"

    assert_text "Subscription was successfully created"
    click_on "Back"
  end

  test "should update Subscription" do
    visit subscription_url(@subscription)
    click_on "Edit this subscription", match: :first

    fill_in "Name", with: @subscription.name
    fill_in "Cost", with: @subscription.cost
    fill_in "Currency", with: @subscription.currency
    fill_in "Billing period", with: @subscription.billing_period
    click_on "Update Subscription"

    assert_text "Subscription was successfully updated"
    click_on "Back"
  end

  test "should destroy Subscription" do
    visit subscription_url(@subscription)
    click_on "Destroy this subscription", match: :first

    assert_text "Subscription was successfully destroyed"
  end
end
