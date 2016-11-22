require 'test_helper'

class ParcelTest < ActiveSupport::TestCase

  test "cleanup_dollar_values_from_csv returns 123.33 float from $123.33 string" do
    assert_equal 123.33, Parcel.cleanup_dollar_values_from_csv("$123.33")
  end

  test "cleanup_dollar_values_from_csv returns 123.33 float from 123.33 string without dollar sign" do
    assert_equal 123.33, Parcel.cleanup_dollar_values_from_csv("123.33")
  end

  test "cleanup_dollar_values_from_csv returns 123.33 float from 123.33 float" do
    assert_equal 123.33, Parcel.cleanup_dollar_values_from_csv(123.33)
  end

  test "cleanup_dollar_values_from_csv returns .99 float from $0.99 string" do
    assert_equal 0.99, Parcel.cleanup_dollar_values_from_csv("$0.99")
  end

end
