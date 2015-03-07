json.array!(@business_units) do |business_unit|
  json.extract! business_unit, :id, :short_name, :long_name, :creation_date, :status, :address, :phone, :parent_id
  json.url business_unit_url(business_unit, format: :json)
end
