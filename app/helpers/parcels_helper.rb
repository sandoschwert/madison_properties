module ParcelsHelper
  def display_us_dollar(value)
    "$#{Money.new(value, "USD")}"
  end
end
