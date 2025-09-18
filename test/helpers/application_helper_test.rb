require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "returns $ as default" do
    assert_equal "$", currency_symbol("USD")
  end

  test "returns $ for USD" do
    assert_equal "$", currency_symbol("USD")
  end

  test "returns THB for THB" do
    assert_equal "THB", currency_symbol("THB")
  end
end
