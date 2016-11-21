json.extract! parcel, :id, :address, :current_year_value, :previous_year_value, :total_taxes, :created_at, :updated_at
json.url parcel_url(parcel, format: :json)