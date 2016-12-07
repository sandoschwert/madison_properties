json.array!(@parcels) do |parcel|
  # Extract from the objec the fields we don't need to modify
  json.extract! parcel, :id, :address, :created_at, :updated_at
  # Use our helper method to modify the values so that we return the same if the
  # user has javascript or not
  json.current_year_value display_us_dollar(parcel.current_year_value)  
  json.previous_year_value display_us_dollar(parcel.previous_year_value)  
  json.total_taxes display_us_dollar(parcel.total_taxes)  

  json.url parcel_url(parcel)
end